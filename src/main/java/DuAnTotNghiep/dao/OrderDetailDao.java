package DuAnTotNghiep.dao;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import DuAnTotNghiep.entity.Orderdetail;

public interface OrderDetailDao extends JpaRepository<Orderdetail, Long>{

	@Query("SELECT p FROM Orderdetail p WHERE p.product.cuahang.account.username=?1")
	List<Orderdetail> findByDetails(String username);

}
