package DuAnTotNghiep.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import DuAnTotNghiep.entity.Product;

public interface ProductDao extends JpaRepository<Product, Integer>{

	@Query("SELECT p FROM Product p WHERE p.available=true")
	Page<Product> findAvailable(Pageable pa);
}
