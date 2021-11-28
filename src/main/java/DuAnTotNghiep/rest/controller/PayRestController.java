package DuAnTotNghiep.rest.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import DuAnTotNghiep.Config;
import DuAnTotNghiep.dao.OrderDao;
import DuAnTotNghiep.dao.OrderDetailDao;
import DuAnTotNghiep.dao.prepayDao;
import DuAnTotNghiep.dto.payment;
import DuAnTotNghiep.entity.Order;
import DuAnTotNghiep.entity.Orderdetail;
import DuAnTotNghiep.entity.prepay;
import DuAnTotNghiep.service.OrderService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/pay")
public class PayRestController {

	@Autowired
	OrderDao odao;
	@Autowired
	OrderService orderService;
	@Autowired
	OrderDetailDao ddao;
	@Autowired
	prepayDao pdao;
	@Autowired
	HttpServletRequest req;

	@PostMapping()
	public payment pay(HttpServletRequest req, HttpServletResponse resp, @RequestBody JsonNode orderData)
			throws ServletException, IOException {

		ObjectMapper mapper = new ObjectMapper();
		Order order = mapper.convertValue(orderData, Order.class);
		odao.save(order);

		TypeReference<List<Orderdetail>> type = new TypeReference<List<Orderdetail>>() {
		};
		List<Orderdetail> details = mapper.convertValue(orderData.get("orderDetails"), type).stream()
				.peek(d -> d.setOrder(order)).collect(Collectors.toList());
		ddao.saveAll(details);

		prepay prepay = new prepay();
		prepay.setPercents(10);
		prepay.setTien(Integer.parseInt(order.getTongtien()) * 10/100);
		prepay.setDate(new Date());
		prepay.setOrder(order);
		pdao.save(prepay);
		
		Long vnp_TxnRef = order.getId();

		String vnp_Version = "2.1.0";
		String vnp_Command = "pay";
		String vnp_OrderInfo = "Thanh Toán";
		String orderType = "Thanh toán đơn hàng";
		int amount = prepay.getTien() * 100;
		String vnp_IpAddr = Config.getIpAddress(req);
		String vnp_TmnCode = Config.vnp_TmnCode;

		Map<String, String> vnp_Params = new HashMap<>();
		vnp_Params.put("vnp_Version", vnp_Version);
		vnp_Params.put("vnp_Command", vnp_Command);
		vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
		vnp_Params.put("vnp_TxnRef", vnp_TxnRef.toString());
		vnp_Params.put("vnp_Amount", String.valueOf(amount));
		vnp_Params.put("vnp_CurrCode", "VND");
		String bank_code = "NCB";
		if (bank_code != null && !bank_code.isEmpty()) {
			vnp_Params.put("vnp_BankCode", bank_code);
		}
		vnp_Params.put("vnp_OrderInfo", vnp_OrderInfo);
		vnp_Params.put("vnp_OrderType", orderType);

		String locate = req.getParameter("language");
		if (locate != null && !locate.isEmpty()) {
			vnp_Params.put("vnp_Locale", locate);
		} else {
			vnp_Params.put("vnp_Locale", "vn");
		}
		vnp_Params.put("vnp_ReturnUrl", Config.vnp_Returnurl);
		vnp_Params.put("vnp_IpAddr", vnp_IpAddr);

		Date dt = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
		String vnp_CreateDate = formatter.format(dt);
		vnp_Params.put("vnp_CreateDate", vnp_CreateDate);

		Calendar cldvnp_ExpireDate = Calendar.getInstance();
		cldvnp_ExpireDate.add(Calendar.SECOND, 30);
		Date vnp_ExpireDateD = cldvnp_ExpireDate.getTime();
		String vnp_ExpireDate = formatter.format(vnp_ExpireDateD);

		vnp_Params.put("vnp_ExpireDate", vnp_ExpireDate);

		List fieldNames = new ArrayList(vnp_Params.keySet());
		Collections.sort(fieldNames);
		StringBuilder hashData = new StringBuilder();
		StringBuilder query = new StringBuilder();
		Iterator itr = fieldNames.iterator();
		while (itr.hasNext()) {
			String fieldName = (String) itr.next();
			String fieldValue = (String) vnp_Params.get(fieldName);
			if ((fieldValue != null) && (fieldValue.length() > 0)) {
				// Build hash data
				hashData.append(fieldName);
				hashData.append('=');
				// hashData.append(fieldValue); //sử dụng và 2.0.0 và 2.0.1 checksum sha256
				hashData.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString())); // sử dụng v2.1.0
																										// check sum
																										// sha512
				// Build query
				query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
				query.append('=');
				query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
				if (itr.hasNext()) {
					query.append('&');
					hashData.append('&');
				}
			}
		}
		String queryUrl = query.toString();
		// String vnp_SecureHash = Config.Sha256(Config.vnp_HashSecret +
		// hashData.toString());
		String vnp_SecureHash = Config.hmacSHA512(Config.vnp_HashSecret, hashData.toString());
		queryUrl += "&vnp_SecureHash=" + vnp_SecureHash;
		String paymentUrl = Config.vnp_PayUrl + "?" + queryUrl;
		System.err.println(paymentUrl);

		payment payment = new payment();
		payment.setCode("00");
		payment.setMessage("success");
		payment.setUrl(paymentUrl);

		return payment;
	}
}