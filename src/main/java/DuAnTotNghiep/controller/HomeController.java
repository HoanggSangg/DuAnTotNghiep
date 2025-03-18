package DuAnTotNghiep.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import DuAnTotNghiep.MailService;
import DuAnTotNghiep.entity.Catesmall;
import DuAnTotNghiep.entity.Product;
import DuAnTotNghiep.entity.tintuc;
import DuAnTotNghiep.service.CatesmallService;
import DuAnTotNghiep.service.CmtproductService;
import DuAnTotNghiep.service.ImagesService;
import DuAnTotNghiep.service.LikeService;
import DuAnTotNghiep.service.ProductService;
import DuAnTotNghiep.service.SpecificationService;
import DuAnTotNghiep.service.tintucService;

@Controller
public class HomeController {

	@Autowired
	HttpServletRequest request;
	@Autowired
	MailService mail;
	@Autowired
	ProductService productService;
	@Autowired
	CatesmallService catesmallService;
	@Autowired
	LikeService likeService;
	@Autowired
	SpecificationService specificationService;
	@Autowired
	ImagesService imagesService;
	@Autowired
	CmtproductService cmtproductService;
	@Autowired
	tintucService tintucService;
	
	String currentUrl;
	String cidValues;
	String cidValuesbefore;
	int pValues = 0;

	@GetMapping("/security/dangky")
	public String dangky() {
		return "layout/_registration";
	}

	public void load(Model m) {
		if (request.getRemoteUser() != null) {
			String username = request.getRemoteUser();
			List<Integer> like = likeService.findUsername(username);
			m.addAttribute("like", like);
		}
		
		currentUrl = ServletUriComponentsBuilder.fromRequestUri(request).build().toString();
		cidValues = request.getParameter("cid");
		
		String referer = request.getHeader("Referer");
		if (referer != null && referer.contains("cid=")) {
		    cidValuesbefore = referer.split("cid=")[1].split("&")[0];
		    if(!cidValuesbefore.equals(cidValues)) {
				pValues = 0;
			}else {
				if(request.getParameter("p") != null) {
					pValues = Integer.parseInt(request.getParameter("p"));
				}
			}
		}
		
		m.addAttribute("currentUrl", currentUrl);
		m.addAttribute("cidValues", cidValues);
		m.addAttribute("pValues", pValues);
		

	}

	@GetMapping("/home/index")
	public String home(Model m, @RequestParam("p") Optional<Integer> p, @RequestParam("cid") Optional<String> cid) {
		try {
			this.load(m);
			if (cid.isPresent()) {
				Pageable pa = PageRequest.of(p.orElse(0), 4);
				Page<Product> list = productService.findByCategoryId(cid.get(), pa);
				int t = list.getTotalPages();
				if (list.getNumber() == t) {
					return "redirect:" + currentUrl + "?cid=" + cidValues + "&p=0";
				}
				m.addAttribute("items", list);

				List<Catesmall> catesmall = catesmallService.findByCate(cid.get());
				m.addAttribute("catesmall", catesmall);
				return "/product/listsp";
			} else {
				Pageable pa = PageRequest.of(p.orElse(0), 8);
				Page<Product> list = productService.findAvailable(pa);
				int t = list.getTotalPages();
				if (list.getNumber() == t) {
					return "redirect:/home/index?p=0";
				}
				m.addAttribute("items", list);
			}
		} catch (Exception e) {
			System.out.println(e);
			return "redirect:/home/index";
		}
		return "layout/_sanpham";
	}

	@GetMapping("/home/contact")
	public String contact() {
		return "layout/contact";
	}

	@GetMapping("/home/hotro")
	public String hotro(HttpServletRequest req) {
		return "layout/hotro";
	}

	@GetMapping("/home/huongdan")
	public String huongdan() {
		return "layout/huongdan";
	}

	@GetMapping("/account/edit")
	public String edit() {
		return "layout/capnhattk";
	}

	@GetMapping("/home/gioithieu")
	public String gioithieu() {
		return "layout/gioithieu";
	}

	@GetMapping("/account/quenmk")
	public String quemk() {
		return "layout/quenmk";
	}

	@GetMapping("/account/doimk")
	public String doimk() {
		return "layout/doimk";
	}

	@GetMapping("/order/lsmua")
	public String lsmua() {
		return "order/lsmuahang";
	}

	@GetMapping({ "/admin", "/admin/home/index" })
	public String admin(Model m) {
		String name = request.getRemoteUser();
		m.addAttribute("name", name);
		return "redirect:/admin/indexAdmin";
	}

	@GetMapping("/store/home/index")
	public String store(Model m) {
		return "redirect:/store/indexStore";
	}

	@GetMapping("/account/individual")
	public String individual() {
		return "layout/individual";
	}

	@GetMapping("/codeqmk")
	public String codeqmk() {
		return "layout/code";
	}

	@GetMapping("/home/tintuc")
	public String tintuc(Model m) {
		List<tintuc> item = tintucService.findAll();
		m.addAttribute("items", item);
		return "layout/show_post";
	}

	@GetMapping("/tintuc/post")
	public String postNews() {
		return "layout/post_bai";
	}
}
