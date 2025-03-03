package DuAnTotNghiep.service.impl;

import java.math.BigDecimal;
import java.text.NumberFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import DuAnTotNghiep.Config;
import DuAnTotNghiep.MailService;
import DuAnTotNghiep.dao.AccountDao;
import DuAnTotNghiep.dao.CartDao;
import DuAnTotNghiep.dao.CodesaleDao;
import DuAnTotNghiep.dao.OrderDao;
import DuAnTotNghiep.dao.OrderDetailDao;
import DuAnTotNghiep.dao.ProductDao;
import DuAnTotNghiep.dao.SaleuserDao;
import DuAnTotNghiep.dao.StoreDao;
import DuAnTotNghiep.entity.Cart;
import DuAnTotNghiep.entity.Codesale;
import DuAnTotNghiep.entity.Order;
import DuAnTotNghiep.entity.Orderdetail;
import DuAnTotNghiep.entity.Product;
import DuAnTotNghiep.entity.Reportdetail;
import DuAnTotNghiep.entity.Saleuser;
import DuAnTotNghiep.entity.Store;
import DuAnTotNghiep.entity.Total;
import DuAnTotNghiep.service.CartService;
import DuAnTotNghiep.service.LikeService;
import DuAnTotNghiep.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderDao odao;
	@Autowired
	OrderDetailDao ddao;
	@Autowired
	MailService mail;
	@Autowired
	AccountDao adao;
	@Autowired
	LikeService likeService;
	@Autowired
	OrderService orderService;
	@Autowired
	ProductDao pdao;
	@Autowired
	StoreDao sdao;
	@Autowired
	CartDao cdao;
	@Autowired
	CodesaleDao codedao;
	@Autowired
	SaleuserDao saledao;
	@Autowired
	CartService cartservice;
	@Autowired
	HttpServletRequest req;

	@Override
	public Order create(JsonNode orderData) {

		ObjectMapper mapper = new ObjectMapper();
		Order order = mapper.convertValue(orderData, Order.class);

		String user = req.getRemoteUser().trim().toLowerCase();
		
		System.err.println(user);
		String id = "";
		Codesale codeSale = null;

		List<Total> total = cartservice.getTotalByUser(user);
		System.err.println(total);
		List<Codesale> kiemtra = codedao.findAll();

		LocalDateTime now = Config.toLocalDateTime(order.getCreateDate());
		for (Codesale c1 : kiemtra) {
			LocalDateTime start = Config.toLocalDateTime(c1.getStarday());
			LocalDateTime end = Config.toLocalDateTime(c1.getEndday());
			boolean isActive = !now.isBefore(start) && !now.isAfter(end);
			c1.setTrangthai(isActive);
			codedao.save(c1);
		}

		for (Total t : total) {
			
			// Kiểm tra cửa hàng
			Store store = sdao.findByTen(t.getCuahang());
			if (store == null) {
				System.err.println("Cửa hàng không tồn tại: " + t.getCuahang());
				throw new RuntimeException("Cửa hàng không tồn tại: " + t.getCuahang());
			}

			// Tính tổng tiền
			double tong = t.getTong();
			int giam = 0;

			Order orderSale = new Order();
			if (order.getCodesale() != null) {
				Saleuser saleUser = saledao.findByUser(t.getUsername(), order.getCodesale().getCode());
				if (saleUser == null) {
					codeSale = codedao.findByCodePay(order.getCodesale().getCode());
					if (codeSale != null && codeSale.isTrangthai() && store.getId() == codeSale.getCuahang().getId()) {
						Saleuser sale = new Saleuser();
						sale.setAccount(order.getAccount());
						sale.setCodesale(codeSale);
						sale.setDate(order.getCreateDate());
						saledao.save(sale);

						giam = (int) (t.getTong() * codeSale.getPercents() / 100);
						tong = t.getTong() - giam;
						orderSale.setCodesale(codeSale);
					}
				}
			}

			// Tạo đơn hàng
			orderSale.setAccount(order.getAccount());
			orderSale.setCreateDate(new Date());
			orderSale.setAddress(order.getAddress());
			orderSale.setNguoinhan(order.getNguoinhan());
			orderSale.setSdt(order.getSdt());
			orderSale.setDiachinn(order.getDiachinn());
			orderSale.setTrangthai(order.getTrangthai());
			orderSale.setTongtien(String.valueOf(tong));
			orderSale.setCuahang(store);
			orderSale.setHoanthanh(true);

			Order or = odao.save(orderSale);
			id += or.getId() + "-";

			// Lấy toàn bộ sản phẩm trong giỏ hàng
			List<Cart> cart = cartservice.getfindUserAndStore(t.getUsername(), t.getCuahang());
			for (Cart c : cart) {
				Product pro = pdao.getById(c.getProductid());

				// Kiểm tra số lượng tồn kho
				if (pro.getSoluong() < c.getQty()) {
					System.err.println("Không đủ hàng: " + pro.getName());
					throw new RuntimeException("Không đủ hàng: " + pro.getName());
				}

				// Tạo chi tiết đơn hàng
				Orderdetail detail = new Orderdetail();
				detail.setOrder(or);
				detail.setProduct(pro);
				detail.setPrice(c.getPrice());
				detail.setQuantity(c.getQty());
				ddao.save(detail);

				// Xóa giỏ hàng
				cdao.deleteById(c.getId());

				// Cập nhật số lượng sản phẩm
				pro.setSoluong(pro.getSoluong() - detail.getQuantity());
				pdao.save(pro);
			}

			// Gửi email xác nhận
//			Set<String> stringSet = Arrays.stream(id.split("-")).filter(s -> !s.isEmpty()).collect(Collectors.toSet());
//
//			stringSet.forEach(s -> {
//				NumberFormat currentLocale = NumberFormat.getInstance();
//				String tongtien = currentLocale.format(new BigDecimal(or.getTongtien()));
//				try {
//					mail.send(or.getAccount().getEmail(), "Tổng tiền bạn thanh toán", tongtien);
//				} catch (Exception e) {
//					System.err.println("Gửi email thất bại: " + e.getMessage());
//				}
//			});
		}

		return order;
	}

	@Override
	public Order findById(Long id) {
		return odao.findById(id).get();
	}

	@Override
	public List<Order> findByUsername(String username) {
		// TODO Auto-generated method stub
		return odao.findByUsername(username);
	}

	@Override
	public List<Order> findByDetails(String username) {
		// TODO Auto-generated method stub
		return odao.findByDetails(username);
	}

	@Override
	public List<Reportdetail> thongKeDoanhThu(boolean trangthai, String username) {
		return ddao.thongKeDoanhThu(trangthai, username);
	}

	@Override
	public Order create(Order order) {
		// TODO Auto-generated method stub
		return odao.save(order);
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		Order order = odao.findById(id).get();
		order.setTrangthai("Đơn hàng đã hủy");
		order.setHoanthanh(false);
		odao.save(order);
	}

	@Override
	public List<Reportdetail> thongKeDoanhThuThang(Integer thang, String username) {
		// TODO Auto-generated method stub
		System.err.println(thang);
		return ddao.thongKeDoanhThuThang(thang, username);
	}

	@Override
	public List<Reportdetail> thongKeDoanhThuNam(Integer nam, String username) {
		// TODO Auto-generated method stub
		return ddao.thongKeDoanhThuNam(nam, username);
	}

	@Override
	public List<Reportdetail> TKDoanhThu(Integer thang, Integer nam, String username) {
		// TODO Auto-generated method stub
		return ddao.TKDoanhThu(thang, nam, username);
	}

}
