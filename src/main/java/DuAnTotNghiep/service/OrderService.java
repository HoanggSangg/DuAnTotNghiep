package DuAnTotNghiep.service;

import java.util.List;

import com.fasterxml.jackson.databind.JsonNode;

import DuAnTotNghiep.entity.Order;
import DuAnTotNghiep.entity.Orderdetail;
import DuAnTotNghiep.entity.ReportDetail;

public interface OrderService {

	Order create(JsonNode orderData);

	Order findById(Long id);

	List<Order> findByUsername(String username);

	List<Order> findByDetails(String username);

	List<ReportDetail> thongKeDoanhThu(boolean trangthai);

	Order create(Order order);

	void delete(Long id);

}
