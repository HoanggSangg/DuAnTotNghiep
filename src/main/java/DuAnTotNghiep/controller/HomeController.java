package DuAnTotNghiep.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/qlsp")
	public String qlsp() {
		return "/quanlysanpham";
	}
	@RequestMapping("/qlch")
	public String qlch() {
		return "/quanlycuahang";
	}
	@RequestMapping("/qltk")
	public String qltk() {
		return "/quanlytaikhoan";
	}
	@RequestMapping("/dangky")
	public String dangky() {
		return "layout/_registration";
	}
	@RequestMapping("/home/index")
	public String home() {
		return "layout/_sanpham";
	}
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
