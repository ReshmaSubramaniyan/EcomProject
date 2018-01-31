package com.niit.DAO;

import java.util.List;

import com.niit.Model.Product;

public interface ProductDAO {
	
public List<Product> list();
	
	public Product getByProductId(int productid);
	
	public Product getByProductName(String productname);
	
	public void saveOrUpdate(Product product);
	
	public void delete(int product_id);

}