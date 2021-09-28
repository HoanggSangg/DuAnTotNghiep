package DuAnTotNghiep.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DuAnTotNghiep.dao.ImageDao;
import DuAnTotNghiep.entity.Image;
import DuAnTotNghiep.service.ImagesService;

@Service
public class ImagesServiceImpl implements ImagesService{

	@Autowired ImageDao dao;

	@Override
	public Image findById(Integer id) {
		return dao.findById(id).get();
	}

}
