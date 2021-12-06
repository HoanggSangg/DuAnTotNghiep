package DuAnTotNghiep.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.JsonNode;

import DuAnTotNghiep.entity.Order;
import DuAnTotNghiep.entity.ReportDetail;
import DuAnTotNghiep.service.OrderService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/orders")
public class OrderRestController {

	@Autowired OrderService orderService;
	
	@PostMapping()
	public Order create(@RequestBody JsonNode orderData) {
		return orderService.create(orderData);
	}
	
	@PostMapping("/trangthai")
	public Order create(@RequestBody Order order) {
		return orderService.create(order);
	}
	
	@GetMapping()
	public Order getOrder(Long id) {
		return orderService.findById(id);
	}
	
	@GetMapping("{username}")
	public List<Order> getOne(@PathVariable("username") String username) {
		return orderService.findByDetails(username);
	}
	
	@GetMapping("/report")
	public List<ReportDetail> getdoanhthu() {
		boolean trangthai = true;
		return orderService.thongKeDoanhThu(trangthai);
	}
}
