package DuAnTotNghiep.service;

import java.util.List;

import DuAnTotNghiep.entity.Likes;

public interface LikeService {

	List<Likes> findAll();

	void deleteById(Integer id);

	Likes create(Likes like);

}
