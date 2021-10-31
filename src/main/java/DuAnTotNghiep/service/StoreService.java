package DuAnTotNghiep.service;

import java.util.List;

import DuAnTotNghiep.entity.Store;

public interface StoreService {

	List<Store> findAll();
	
	Store findById(Integer id);

	Store create(Store store);

	Store update(Store store);

	void delete(Integer id);

	List<Store> findByStore(String username);

}
