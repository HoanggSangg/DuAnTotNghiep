package DuAnTotNghiep.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import DuAnTotNghiep.entity.Product;

public interface ProductDao extends JpaRepository<Product, Integer>{

	@Query("SELECT p FROM Product p WHERE p.available=true")
	Page<Product> findAvailable(Pageable pa);
	
	@Query("SELECT p FROM Product p WHERE p.catesmall.category.id=?1 and p.available=true")
	List<Product> findByCategoryId(String cid);
	
}
