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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import DuAnTotNghiep.entity.Catesmall;
import DuAnTotNghiep.entity.Cmtproduct;
import DuAnTotNghiep.entity.Cmtstore;
import DuAnTotNghiep.entity.Image;
import DuAnTotNghiep.entity.Introduce;
import DuAnTotNghiep.entity.Likes;
import DuAnTotNghiep.entity.Product;
import DuAnTotNghiep.entity.Specification;
import DuAnTotNghiep.entity.Store;
import DuAnTotNghiep.service.CatesmallService;
import DuAnTotNghiep.service.CmtproductService;
import DuAnTotNghiep.service.CmtstoreService;
import DuAnTotNghiep.service.ImagesService;
import DuAnTotNghiep.service.IntroduceService;
import DuAnTotNghiep.service.LikeService;
import DuAnTotNghiep.service.ProductService;
import DuAnTotNghiep.service.SpecificationService;
import DuAnTotNghiep.service.StoreService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;
	@Autowired
	CatesmallService catesmallService;
	@Autowired
	LikeService likeService;
	@Autowired
	HttpServletRequest req;
	@Autowired
	SpecificationService specificationService;
	@Autowired
	ImagesService imagesService;
	@Autowired
	CmtproductService cmtproductService;
	@Autowired
	IntroduceService introduceService;
	@Autowired
	StoreService storeservice;
	@Autowired
	CmtstoreService cmtstoreService;
	
	int pValues = 0;
	String currentUrl;
	String cidValues;
	boolean priceValue = false;

	@GetMapping("/product/like")
	public String list(Model m, @RequestParam("p") Optional<Integer> p, @RequestParam("cid") Optional<String> cid) {
		try {
			this.liked(m);
			if (req.getRemoteUser() != null) {
				String username = req.getRemoteUser();
				Pageable pa = PageRequest.of(p.orElse(0), 4);
				Page<Likes> list = likeService.findByUser(username, pa);
				int t = list.getTotalPages();
				if(list.getNumber() != 0) {
					if (list.getNumber() == t) {
						return "redirect:/product/like?p=0";
					}
				}
				m.addAttribute("items", list);
			}
		} catch (Exception e) {
			return "redirect:/product/like?p=0";
		}
		return "/product/like";
	}

	@GetMapping("/product/detail/{id}")
	public String detail(Model m, @PathVariable("id") Integer id, @RequestParam("cid") Optional<String> cid) {
		this.liked(m);
		
		Product item = productService.findById(id);
		m.addAttribute("items", item);
		
		List<Specification> spe = specificationService.findByIdProduct(id);
		m.addAttribute("spe", spe);
		
		List<Product> list = productService.findByCategoryId(cid.get());
		m.addAttribute("list", list);
		
		List<Image> image = imagesService.findByIdProduct(id);
		m.addAttribute("images", image);
		
		List<Cmtproduct> cmtproduct = cmtproductService.findByIdProduct(id);
		m.addAttribute("cmtproduct", cmtproduct);
		
		List<Introduce> introduce = introduceService.findByIdProduct(id);
		m.addAttribute("introduce", introduce);
		
		return "/product/detail";
	}
	
	@GetMapping("/product/store/{id}")
	public String store(Model m, @PathVariable("id") Integer id) {
		this.liked(m);
		List<Product> item = productService.findByStoreId(id);
		m.addAttribute("items", item);
		
		List<Cmtstore> cmtstore = cmtstoreService.findByIdStore(id);
		m.addAttribute("cmtstore", cmtstore);
		
		Store store = storeservice.findById(id);
		m.addAttribute("store", store);
		return "/product/store";
	}

	@GetMapping("/products/cate/{name}")
	public String cates(Model m, @RequestParam("p") Optional<Integer> p, @PathVariable("name") String name, @RequestParam("cid") Optional<String> cid) {
		this.liked(m);
		List<Catesmall> catesmall = catesmallService.findByCate(cid.get());
		m.addAttribute("catesmall", catesmall);
		
		Pageable pa = PageRequest.of(p.orElse(0), 4);
		Page<Product> list = productService.findByCateNameAndCateId(name, cid.get(), pa);
		int t = list.getTotalPages();
		if (list.getNumber() == t) {
			return "redirect:" + currentUrl + "?cid=" + cidValues + "&p=0";
		}
		m.addAttribute("items", list);
		return "/product/listsp";
	}

	@GetMapping("/products/tkname")
	public String getName(Model m, @RequestParam("p") Optional<Integer> p, @RequestParam("cid") String name) {
		this.liked(m);
		if(name != "") {
			Pageable pa = PageRequest.of(p.orElse(0), 4);
			Page<Product> list = productService.findByName("%" + name + "%", pa);
			int t = list.getTotalPages();
			if (list.getNumber() == t) {
				return "redirect:" + currentUrl + "?cid=" + cidValues + "&p=0";
			}
			m.addAttribute("items", list);
		}
		return "/product/list";
	}

	@GetMapping("/products/tkprice")
	public String search(Model m, @RequestParam("p") Optional<Integer> p, @RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max) {
		this.liked(m);
		priceValue = true;
		double minPrice = min.orElse(Double.MIN_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		
		Pageable pa = PageRequest.of(p.orElse(0), Integer.MAX_VALUE);
		Page<Product> list = productService.findByPriceBetweenPage(minPrice, maxPrice, pa);
		
		m.addAttribute("items", list);
		m.addAttribute("priceValue", priceValue);
		
		return "/product/list";
	}
	
	public void liked(Model m) {
		if (req.getRemoteUser() != null) {
			String username = req.getRemoteUser();
			List<Integer> like = likeService.findUsername(username);
			m.addAttribute("like", like);
		}
		
		currentUrl = ServletUriComponentsBuilder.fromRequestUri(req).build().toString();
		cidValues = req.getParameter("cid");
		if(req.getParameter("p") != null) {
			pValues = Integer.parseInt(req.getParameter("p"));
		}
		
		m.addAttribute("currentUrl", currentUrl);
		m.addAttribute("cidValues", cidValues);
		m.addAttribute("pValues", pValues);
	}
}
