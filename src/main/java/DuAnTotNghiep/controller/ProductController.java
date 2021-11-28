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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import DuAnTotNghiep.entity.Catesmall;
import DuAnTotNghiep.entity.Cmtproduct;
import DuAnTotNghiep.entity.Image;
import DuAnTotNghiep.entity.Likes;
import DuAnTotNghiep.entity.Product;
import DuAnTotNghiep.entity.Specification;
import DuAnTotNghiep.service.CatesmallService;
import DuAnTotNghiep.service.CmtproductService;
import DuAnTotNghiep.service.ImagesService;
import DuAnTotNghiep.service.LikeService;
import DuAnTotNghiep.service.ProductService;
import DuAnTotNghiep.service.SpecificationService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;
	@Autowired
	CatesmallService catesmallService;
	@Autowired
	LikeService likeService;
	@Autowired
	HttpServletRequest request;
	@Autowired
	SpecificationService specificationService;
	@Autowired
	ImagesService imagesService;
	@Autowired
	CmtproductService cmtproductService;
	
	@RequestMapping("/product/list")
	public String list(Model m, @RequestParam("p") Optional<Integer> p, @RequestParam("cid") Optional<String> cid) {
		try {
			if (cid.isPresent()) {
				List<Product> list = productService.findByCategoryId(cid.get());
				m.addAttribute("items", list);
				List<Catesmall> list1 = catesmallService.findByCate(cid.get());
				m.addAttribute("catesmall", list1);
				if(request.getRemoteUser() != null) {
					String username = request.getRemoteUser();
					List<Integer> like = likeService.findUsername(username);
					m.addAttribute("like", like);
				}
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
	public String detail(Model m, @PathVariable("id") Integer id, @RequestParam("cid") Optional<String> cid) {
		Product item = productService.findById(id);
		m.addAttribute("items", item);
		List<Specification> spe = specificationService.findByIdProduct(id);
		m.addAttribute("spe", spe);
		List<Product> list = productService.findByCategoryId(cid.get());
		m.addAttribute("image", list);
		List<Image> image = imagesService.findByIdProduct(id);
		m.addAttribute("images", image);
		List<Cmtproduct> cmtproduct = cmtproductService.findByIdProduct(id);
		m.addAttribute("cmtproduct", cmtproduct);
		return "/product/detail";
	}

	@RequestMapping("/products/cate/{name}")
	public String cates(Model m, @PathVariable("name") String name, @RequestParam("cateid") Optional<String> cateid) {
		List<Product> list = productService.findByCateNameAndCateId(name, cateid.get());
		m.addAttribute("items", list);
		return "/product/listsp";
	}
	@RequestMapping("/products/tkname")
	public String getName(Model m, @RequestParam("name") String name) {
		List<Product> list = productService.findByName("%" + name + "%");
		m.addAttribute("items", list);
		return "/product/listsp"; 
	}
	
	@RequestMapping("/products/tkprice")
	public String search(Model model, @RequestParam("min") Optional<Double> min, @RequestParam("max") Optional<Double> max) {
		double minPrice = min.orElse(Double.MIN_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		List<Product> list = productService.findByPriceBetween(minPrice, maxPrice);
		model.addAttribute("items", list);
		return "/product/listsp";
	}
	@RequestMapping("/sort")
	public String sort(Model model) {
		System.err.println(request.getParameter("sort"));
		return "/product/listsp";
	}
}
