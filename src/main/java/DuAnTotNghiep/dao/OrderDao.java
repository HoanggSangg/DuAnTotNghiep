package DuAnTotNghiep.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import DuAnTotNghiep.entity.Order;

public interface OrderDao extends JpaRepository<Order, Long>{

	/*
	 * @Query("SELECT o FROM Order o WHERE o.account.username=?1") List<Order>
	 * findByUsername(String username);
	 */

}
