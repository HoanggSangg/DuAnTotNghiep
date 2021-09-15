package DuAnTotNghiep.service.impl;

import org.springframework.stereotype.Service;

import DuAnTotNghiep.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{

//	@Autowired OrderDao odao;
//	@Autowired OrderDetailDao ddao;
//	
//	@Override
//	public Order create(JsonNode orderData) {
//		ObjectMapper mapper = new ObjectMapper();
//		Order order = mapper.convertValue(orderData, Order.class);
//		odao.save(order);
//		
//		TypeReference<List<Orderdetail>> type = new TypeReference<List<Orderdetail>>() {};
//		List<Orderdetail> details = mapper.convertValue(orderData.get("orderDetails"), type)
//				.stream().peek(d -> d.setOrder(order)).collect(Collectors.toList());
//		ddao.saveAll(details);
//		
//		return order;
//	}
//
//	@Override
//	public Order findById(Long id) {
//		return odao.findById(id).get();
//	}
//
//	@Override
//	public List<Order> findByUsername(String username) {
//		return odao.findByUsername(username);
//	}

}
