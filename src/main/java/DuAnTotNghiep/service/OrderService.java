package DuAnTotNghiep.service;

import java.util.List;

import com.fasterxml.jackson.databind.JsonNode;

import DuAnTotNghiep.entity.Order;
import DuAnTotNghiep.entity.Orderdetail;

public interface OrderService {

	Order create(JsonNode orderData);

	Order findById(Long id);

	List<Order> findByUsername(String username);

	List<Orderdetail> findByDetails(String username);

}
