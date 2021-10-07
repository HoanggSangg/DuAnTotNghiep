package DuAnTotNghiep.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@Autowired
	HttpServletRequest request;
	
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
	@RequestMapping({"/admin", "/admin/home/index"})
	public String admin(Model m) {
		String name = request.getRemoteUser();
		m.addAttribute("name", name);
		return "redirect:/admin/indexAdmin.html";
	}
	@RequestMapping("/product/productgird.html")
	public String ird() {
		return "/product/productgird.html";
	}
}
