package DuAnTotNghiep.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DuAnTotNghiep.dao.LikesDao;
import DuAnTotNghiep.dao.ProductDao;
import DuAnTotNghiep.entity.Likes;
import DuAnTotNghiep.service.LikeService;

@Service
public class LikeServiceImpl implements LikeService{

	@Autowired LikesDao ldao;

	@Override
	public List<Likes> findAll() {
		return ldao.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		ldao.deleteById(id);
	}

	@Override
	public Likes create(Likes like) {
		return ldao.save(like);
	}

}