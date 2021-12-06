package DuAnTotNghiep.dao;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import DuAnTotNghiep.entity.Orderdetail;
import DuAnTotNghiep.entity.ReportDetail;

public interface OrderDetailDao extends JpaRepository<Orderdetail, Long>{

	@Query("SELECT new ReportDetail(d.order.account.username, d.order.createDate, sum(d.price * d.quantity), sum(d.quantity)) FROM Orderdetail d where d.order.hoanthanh=?1 GROUP BY d.order.account.username, d.order.createDate")
	List<ReportDetail> thongKeDoanhThu(boolean trangthai);

}
