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
	@RequestMapping("/security/dangky")
	public String dangky() {
		return "layout/_registration";
	}
	@RequestMapping("/home/index")
	public String home() {
		return "layout/_sanpham";
	}
	@RequestMapping("/home/contact")
	public String contact() {
		return "layout/contact";
	}
	@RequestMapping("/home/hotro")
	public String hotro() {
		return "layout/hotro";
	}
	@RequestMapping("/account/edit")
	public String edit() {
		return "layout/capnhattk";
	}
	@RequestMapping("/home/gioithieu")
	public String gioithieu() {
		return "layout/gioithieu";
	}
	@RequestMapping("/account/quenmk")
	public String quemk() {
		return "layout/quenmk";
	}
	@RequestMapping("/account/doimk")
	public String doimk() {
		return "layout/doimk";
	}
	@RequestMapping("/order/lsmua")
	public String lsmua() {
		return "order/lsmuahang";
	}
}
