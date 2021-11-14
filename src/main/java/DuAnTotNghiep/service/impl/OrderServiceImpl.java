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
import DuAnTotNghiep.dao.ProductDao;
import DuAnTotNghiep.entity.Account;
import DuAnTotNghiep.entity.Order;
import DuAnTotNghiep.entity.Orderdetail;
import DuAnTotNghiep.entity.Product;
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

		try {
			mail.send(acc.getEmail(), "Tổng tiền bạn thanh toán", list.getTongtien());
		} catch (Exception e) {
			// TODO: handle exception
		}
		return order;
	}

	@Override
	public Order findById(Long id) {
		return odao.findById(id).get();
	}

	@Override
	public List<Order> findByUsername(String username) {
		return odao.findByUsername(username);
	}

}
