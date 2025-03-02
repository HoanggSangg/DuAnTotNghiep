package DuAnTotNghiep.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import DuAnTotNghiep.entity.Product;

public interface ProductDao extends JpaRepository<Product, Integer>{

	@Query("SELECT p FROM Product p WHERE p.available=true and p.soluong>0 and p.cuahang.trangthai=true")
	Page<Product> findAvailable(Pageable pa);
	
	@Query("SELECT p FROM Product p WHERE p.catesmall.category.id=?1 and p.available=true and p.soluong>0 and p.cuahang.trangthai=true")
	List<Product> findByCategoryId(String cid);
	
	@Query("SELECT p FROM Product p WHERE p.catesmall.category.id=?1 and p.available=true and p.soluong>0 and p.cuahang.trangthai=true")
	Page<Product> findByCategoryId(String cid, Pageable pa);

	@Query("SELECT p FROM Product p WHERE p.catesmall.name=?1 and p.available=true and p.soluong>0 and p.cuahang.trangthai=true")
	List<Product> findByCateName(String name);

	@Query("SELECT p FROM Product p WHERE p.catesmall.name=?1 and p.catesmall.category.id=?2 and p.available=true and p.soluong>0 and p.cuahang.trangthai=true")
	List<Product> findByCateNameAndCateId(String name, String cateid);
	
	@Query("SELECT p FROM Product p WHERE p.catesmall.name=?1 and p.catesmall.category.id=?2 and p.available=true and p.soluong>0 and p.cuahang.trangthai=true")
	Page<Product> findByCateNameAndCateId(String name, String cateid, Pageable pa);
	
	@Query("SELECT p FROM Product p WHERE p.name LIKE ?1 and p.available=true and p.soluong>0 and p.cuahang.trangthai=true")
	List<Product> findByName(String name);
	
	@Query("SELECT p FROM Product p WHERE p.name LIKE ?1 and p.available=true and p.soluong>0 and p.cuahang.trangthai=true")
	Page<Product> findByName(String name, Pageable pa);
	
	List<Product> findByPriceBetween(double minPrice, double maxPrice);
	
	@Query("SELECT p FROM Product p WHERE p.price BETWEEN ?1 AND ?2 and p.available=true and p.soluong>0 and p.cuahang.trangthai=true")
	Page<Product> findByPriceBetweenPage(double minPrice, double maxPrice, Pageable pa);

	@Query("SELECT p FROM Product p WHERE p.cuahang.account.username=?1 and p.available=true and p.soluong>0 and p.cuahang.trangthai=true")
	List<Product> findByStore(String store);
	
	@Query("SELECT p FROM Product p WHERE p.cuahang.account.username=?1")
	List<Product> findManageByStore(String store);

	@Query("SELECT p FROM Product p WHERE p.cuahang.id=?1 and p.available=true and p.soluong>0 and p.cuahang.trangthai=true")
	List<Product> findByStoreId(Integer id);
	
}
