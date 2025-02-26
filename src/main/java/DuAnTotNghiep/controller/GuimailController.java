package DuAnTotNghiep.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import DuAnTotNghiep.MailService;

@Controller
public class GuimailController {

	@Autowired
	HttpServletRequest req;
	@Autowired
	MailService mail;
	String email = "taolasang2k1@gmail.com";
	
	public void mailInfo(String ho, String ten, String sdt, String tinnhan) {
		ho = req.getParameter("ho");
		ten = req.getParameter("ten");
		sdt = req.getParameter("sdt");
		tinnhan = req.getParameter("tinnhan");
	}
	
	@GetMapping("/hotro/guimail")
	public String hotro(String ho, String ten, String sdt, String tinnhan) {
		this.mailInfo(ho, ten, sdt, tinnhan);
		try {
			mail.send(email,"Mail Hỗ Trợ","Tên: "+ ho + " "+ ten + "<br>" + "Số điện thoại: " + sdt + "<br>" + "Tin nhắn: "+ tinnhan);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "redirect:/home/hotro";
	}
	@GetMapping("/lienhe/guimail")
	public String lienhe(String ho, String ten, String sdt, String tinnhan) {
		this.mailInfo(ho, ten, sdt, tinnhan);
		try {
			mail.send(email,"Mail Liên Hệ","Tên: "+ ten + "<br>" + "Tin nhắn: "+ tinnhan);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "redirect:/home/contact";
	}
}
