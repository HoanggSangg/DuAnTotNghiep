package DuAnTotNghiep.dao;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import DuAnTotNghiep.entity.Orderdetail;
import DuAnTotNghiep.entity.ReportDetail;

public interface OrderDetailDao extends JpaRepository<Orderdetail, Long>{

	@Query("SELECT p FROM Orderdetail p WHERE p.product.cuahang.account.username=?1")
	List<Orderdetail> findByDetails(String username);

	@Query("SELECT new ReportDetail(d.order.account.username, sum(d.price * d.quantity), sum(d.quantity)) FROM Orderdetail d GROUP BY d.order.account.username")
	List<ReportDetail> thongKeDoanhThu();

}
