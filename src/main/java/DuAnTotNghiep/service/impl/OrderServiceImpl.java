package DuAnTotNghiep.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import DuAnTotNghiep.MailService;
import DuAnTotNghiep.dao.AccountDao;
import DuAnTotNghiep.dao.OrderDao;
import DuAnTotNghiep.dao.OrderDetailDao;
import DuAnTotNghiep.entity.Account;
import DuAnTotNghiep.entity.Order;
import DuAnTotNghiep.entity.Orderdetail;
import DuAnTotNghiep.entity.ReportDetail;
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

	@Override
	public Order create(JsonNode orderData) {
		ObjectMapper mapper = new ObjectMapper();
		Order order = mapper.convertValue(orderData, Order.class);
		odao.save(order);

		TypeReference<List<Orderdetail>> type = new TypeReference<List<Orderdetail>>() {
		};
		List<Orderdetail> details = mapper.convertValue(orderData.get("orderDetails"), type).stream()
				.peek(d -> d.setOrder(order)).collect(Collectors.toList());
		ddao.saveAll(details);

		Order list = odao.findById(order.getId()).get();
		Account acc = adao.findById(order.getAccount().getUsername()).get();

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
	public List<ReportDetail> thongKeDoanhThu(boolean trangthai) {
		return ddao.thongKeDoanhThu(trangthai);
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

}
