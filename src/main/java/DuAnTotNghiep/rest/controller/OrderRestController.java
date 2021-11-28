package DuAnTotNghiep.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.JsonNode;

import DuAnTotNghiep.dao.OrderDetailDao;
import DuAnTotNghiep.entity.Order;
import DuAnTotNghiep.entity.Orderdetail;
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
	
	@GetMapping("{username}")
	public List<Orderdetail> getOne(@PathVariable("username") String username) {
		return orderService.findByDetails(username);
	}
	
	@GetMapping()
	public List<ReportDetail> getdoanhthu() {
		return orderService.thongKeDoanhThu();
	}
}
