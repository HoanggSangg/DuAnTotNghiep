package DuAnTotNghiep.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
//test Tai
	@RequestMapping("/123")
	public String test() {
		return "../static/authorize/index";
	}
	@RequestMapping("/dangky")
	public String dangky() {
		return "layout/_registration";
	}
	@RequestMapping("/home")
	public String home() {
		return "layout/_sanpham";
	}
//	@RequestMapping("/checkout")
//	public String checkout() {
//		return "checkout";
//	}
	@RequestMapping("/productgird")
	public String productgird() {
		return "productgird";
	}
	@RequestMapping("/details")
	public String details() {
		return "details";
	}
	@RequestMapping("/cart")
	public String cart() {
		return "cart";
	}
	@RequestMapping("/checkout2")
	public String checkout2() {
		return "checkout2";
	}
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
}
