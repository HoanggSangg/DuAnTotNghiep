package DuAnTotNghiep.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import DuAnTotNghiep.service.OrderService;

@Controller
public class OrderController {

	@Autowired OrderService orderService;
	
	@RequestMapping("/order/checkout")
	public String checkout() {
		return "order/checkout";
	}
	@RequestMapping("/order/checkout2")
	public String checkout1() {
		return "order/checkout2";
	}
	@RequestMapping("/order/list")
	public String list(Model m, HttpServletRequest req) {
		String username = req.getRemoteUser();
		m.addAttribute("orders", orderService.findByUsername(username));
		return "order/list";
	}
	@RequestMapping("/order/detail/{id}")
	public String detail(Model m, @PathVariable("id") Long id) {
		m.addAttribute("order", orderService.findById(id));
		return "order/detail";
	}
}
