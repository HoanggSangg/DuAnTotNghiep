package DuAnTotNghiep.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import DuAnTotNghiep.dao.ProductDao;
import DuAnTotNghiep.entity.Product;
import DuAnTotNghiep.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired ProductDao pdao;

	@Override
	public List<Product> findAll() {
		return pdao.findAll();
	}

	@Override
	public Product findById(Integer id) {
		return pdao.findById(id).get();
	}

	@Override
	public Product create(Product product) {
		return pdao.save(product);
	}

	@Override
	public Product update(Product product) {
		return pdao.save(product);
	}

	@Override
	public void delete(Integer id) {
		pdao.deleteById(id);
	}

	@Override
	public List<Product> findByName(String name) {
		return pdao.findByName(name);
	}
	
	@Override
	public Page<Product> findByName(String name, Pageable pa) {
		return pdao.findByName(name, pa);
	}

	@Override
	public Page<Product> findAvailable(Pageable pa) {
		return pdao.findAvailable(pa);
	}

	@Override
	public List<Product> findByCateNameAndCateId(String name, String cateid) {
		return pdao.findByCateNameAndCateId(name, cateid);
	}
	
	@Override
	public Page<Product> findByCateNameAndCateId(String name, String cateid, Pageable pa) {
		return pdao.findByCateNameAndCateId(name, cateid, pa);
	}

	@Override
	public List<Product> findByPriceBetween(double minPrice, double maxPrice) {
		return pdao.findByPriceBetween(minPrice, maxPrice);
	}
	
	@Override
	public Page<Product> findByPriceBetweenPage(double minPrice, double maxPrice, Pageable pa) {
		return pdao.findByPriceBetweenPage(minPrice, maxPrice, pa);
	}

	@Override
	public List<Product> findByStore(String store) {
		return pdao.findByStore(store);
	}
	
	@Override
	public List<Product> findManageByStore(String store) {
		return pdao.findManageByStore(store);
	}

	@Override
	public List<Product> findByStoreId(Integer id) {
		// TODO Auto-generated method stub
		return pdao.findByStoreId(id);
	}
	
	@Override
	public List<Product> findByCategoryId(String cid) {
		return pdao.findByCategoryId(cid);
	}

	@Override
	public Page<Product> findByCategoryId(String cid, Pageable pa) {
		// TODO Auto-generated method stub
		return pdao.findByCategoryId(cid, pa);
	}

}
