package DuAnTotNghiep.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DuAnTotNghiep.dao.tintucDao;
import DuAnTotNghiep.entity.tintuc;
import DuAnTotNghiep.service.tintucService;

@Service
public class tintucServiceImpl implements tintucService{

	@Autowired tintucDao dao;

	@Override
	public tintuc create(tintuc tintuc) {
		// TODO Auto-generated method stub
		return dao.save(tintuc);
	}

	@Override
	public List<tintuc> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}
	
	
}
