package DuAnTotNghiep.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import DuAnTotNghiep.entity.Product;

public interface ProductService {

	List<Product> findAll();

	Product findById(Integer id);

	Page<Product> findByCategoryId(String cid, Pageable pa);
	
	List<Product> findByCategoryId(String cid);

	Product create(Product product);

	Product update(Product product);

	void delete(Integer id);
	
	List<Product> findByName(String name);
	
	Page<Product> findByName(String name, Pageable pa);

	Page<Product> findAvailable(Pageable pa);

	List<Product> findByCateNameAndCateId(String name, String cateid);
	
	Page<Product> findByCateNameAndCateId(String name, String cateid, Pageable pa);

	List<Product> findByPriceBetween(double minPrice, double maxPrice);
	
	Page<Product> findByPriceBetweenPage(double minPrice, double maxPrice, Pageable pa);

	List<Product> findByStore(String store);

	List<Product> findByStoreId(Integer id);



}
