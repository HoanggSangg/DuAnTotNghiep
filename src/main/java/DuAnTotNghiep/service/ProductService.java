package DuAnTotNghiep.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import DuAnTotNghiep.entity.Product;

public interface ProductService {

//	List<Product> findAll();

	Product findById(Integer id);

//	List<Product> findByCategoryId(String cid);
//
//	Product create(Product product);
//
//	Product update(Product product);
//
//	void delete(Integer id);
//
//	List<Product> findByPrice(Double price);
//
//	List<Product> findByName(String name);

	Page<Product> findAvailable(Pageable pa);


}
