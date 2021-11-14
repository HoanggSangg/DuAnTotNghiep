package DuAnTotNghiep.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import DuAnTotNghiep.MailService;

@Controller
public class HomeController {
	
	@Autowired
	HttpServletRequest request;
	@Autowired
	MailService mail;
	
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
	@RequestMapping("/store/home/index")
	public String store(Model m) {
		return "redirect:/store/indexStore.html";
	}
	@RequestMapping("/account/individual")
	public String individual() {
		return "/layout/individual";
	}
	@RequestMapping("/codeqmk")
	public String codeqmk() {
		return "/layout/code";
	}
}
