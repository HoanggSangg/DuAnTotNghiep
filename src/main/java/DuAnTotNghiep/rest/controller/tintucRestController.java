package DuAnTotNghiep.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import DuAnTotNghiep.entity.Cmtproduct;
import DuAnTotNghiep.entity.tintuc;
import DuAnTotNghiep.service.tintucService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/post")
public class tintucRestController {

	@Autowired
	tintucService tintucService;

	@GetMapping()
	public List<tintuc> getAll() {
		return tintucService.findAll();
	}
	
	@PostMapping
	public tintuc create(@RequestBody tintuc tintuc) {
		return tintucService.create(tintuc);
	}
}
