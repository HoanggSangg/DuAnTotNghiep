package DuAnTotNghiep.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import DuAnTotNghiep.entity.Catesmall;
import DuAnTotNghiep.service.CatesmallService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/catesmall")
public class CateSmallRestController {
	@Autowired CatesmallService catesmallService;
	
	@GetMapping()
	public List<Catesmall> getAll(){
		return catesmallService.findAll();
	}
}
