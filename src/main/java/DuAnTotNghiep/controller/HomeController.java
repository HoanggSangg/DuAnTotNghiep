package DuAnTotNghiep.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/home")
	public String home() {
		return "layout/_sanpham.html";
	}
	@RequestMapping("/login")
	public String login() {
		return "checkout.html";
	}
	@RequestMapping("/checkout")
	public String checkout() {
		return "checkout.html";
	}
	@RequestMapping("/productgird")
	public String productgird() {
		return "productgird.html";
	}
	@RequestMapping("/details")
	public String details() {
		return "details.html";
	}
	@RequestMapping("/cart")
	public String cart() {
		return "cart.html";
	}
	@RequestMapping("/checkout2")
	public String checkout2() {
		return "checkout2.html";
	}
	@RequestMapping("/contact")
	public String contact() {
		return "contact.html";
	}
}
