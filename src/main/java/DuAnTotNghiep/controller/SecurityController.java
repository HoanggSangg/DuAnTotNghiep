package DuAnTotNghiep.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import DuAnTotNghiep.service.AccountService;

@Controller
public class SecurityController {

	@Autowired AccountService accountService;
	
	@RequestMapping("/security/login")
	public String loginForm(Model m) {
		m.addAttribute("message", "Vui lòng đăng nhập");
		return "security/login";
	}
	@RequestMapping("/success/login")
	public String loginSuccess(Model m) {
		m.addAttribute("message", "Đăng nhập thành công");
		return "redirect:/home/index";
	}
	@RequestMapping("/error/login")
	public String loginError(Model m) {
		m.addAttribute("message", "Sai thông tin đăng nhập");
		return "security/login";
	}
	@RequestMapping("/unauthoried")
	public String unauthoried(Model m) {
		m.addAttribute("message", "Không có quyền truy xuất");
		return "security/login";
	}
	@RequestMapping("/logoff")
	public String logoffSuccess(Model m) {
		m.addAttribute("message", "Đăng xuất thành công");
		return "security/login";
	}
}
