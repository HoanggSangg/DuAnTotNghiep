package DuAnTotNghiep.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.annotations.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import DuAnTotNghiep.entity.Product;
import DuAnTotNghiep.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;
	@Autowired
	HttpServletRequest request;

	@RequestMapping("/product/list")
	public String list(Model m, @RequestParam("p") Optional<Integer> p, @RequestParam("cid") Optional<String> cid) {
		try {
//			String name  = request.getRemoteUser();
//			System.out.println("số"+name);
			if (cid.isPresent()) {
				List<Product> list = productService.findByCategoryId(cid.get());
				m.addAttribute("items", list);
				return "/product/listsp";
			} else {
				Pageable pa = PageRequest.of(p.orElse(0), 6);
				Page<Product> list = productService.findAvailable(pa);
				int t = list.getTotalPages();
				if (list.getNumber() == t) {
					return "redirect:/product/list?p=0";
				}
				m.addAttribute("items", list);
			}
		} catch (Exception e) {
			System.out.println(e);
			return "redirect:/product/list?p=0";
		}
		return "/product/list";
	}

	@RequestMapping("/product/detail/{id}")
	public String detail(Model m, @PathVariable("id") Integer id) {
		Product item = productService.findById(id);
		m.addAttribute("item", item);
		return "/product/detail";
	}

	@RequestMapping("/products/catename/{name}")
	public String catename(Model m, @PathVariable("name") String name) {
		List<Product> list = productService.findByCateName(name);
		m.addAttribute("items", list);
		return "/productlitstsp";
	}

	@RequestMapping("/products/cate/{name}")
	public String cates(Model m, @PathVariable("name") String name, @RequestParam("cateid") Optional<String> cateid) {
		List<Product> list = productService.findByCateNameAndCateId(name, cateid.get());
		m.addAttribute("items", list);
		return "/productlitstsp";
	}
}
