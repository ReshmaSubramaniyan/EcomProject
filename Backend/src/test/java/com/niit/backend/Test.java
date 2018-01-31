package com.niit.backend;


import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.DAO.UserDAO;

import com.niit.DAO.BillingaddressDAO;
import com.niit.DAO.CartDAO;
import com.niit.DAO.CategoryDAO;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.RoleDAO;
import com.niit.DAO.ShippingaddressDAO;
import com.niit.DAO.SupplierDAO;
import com.niit.Model.Billingaddress;
import com.niit.Model.Cart;
import com.niit.Model.Category;
import com.niit.Model.Product;
import com.niit.Model.Role;
import com.niit.Model.Shippingaddress;
import com.niit.Model.Supplier;
import com.niit.Model.User;

public class Test {

	

	public static void main (String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();

		UserDAO userDAO = (UserDAO) context.getBean("UserDAO");
	    CategoryDAO categoryDAO = (CategoryDAO) context.getBean("CategoryDAO");
		ProductDAO productDAO = (ProductDAO) context.getBean("ProductDAO");
		BillingaddressDAO billingaddressDAO = (BillingaddressDAO) context.getBean("BillingaddressDAO");
		CartDAO cartDAO = (CartDAO) context.getBean("CartDAO");
		SupplierDAO supplierDAO = (SupplierDAO) context.getBean("SupplierDAO");
		
		ShippingaddressDAO shippingaddressDAO = (ShippingaddressDAO) context.getBean("ShippingaddressDAO");
		RoleDAO roleDAO = (RoleDAO) context.getBean("RoleDAO");
		
		Category category = (Category) context.getBean("category");
		
		Product product = (Product) context.getBean("product");
		Billingaddress billingaddress = (Billingaddress) context.getBean("billingaddress");
		Cart cart = (Cart) context.getBean("cart");
		Supplier supplier = (Supplier) context.getBean("supplier");
		Shippingaddress shippingaddress = (Shippingaddress) context.getBean("shippingaddress");
		Role role = (Role) context.getBean("role");
		User user = (User) context.getBean("user");
		
		user.setUserName("skfr");
		user.setEmailId("jhvd@gmail.com");
		user.setPassword("jfkd");
		
		user.setContactNumber(98765);
		user.setAddress("s12,sejkajdh");
		user.setZipcode(75426);

		userDAO.saveOrUpdate(user);
		
		
		category.setCategoryName("Watches");
		
		categoryDAO.saveOrUpdate(category);
		
		
		

		role.setUserName("kjgdffd");
		role.setEmailId("hgfshdghj");
		role.setContactNumber(6567);
		
		
		role.setUser(user);
		
		userDAO.saveOrUpdate(user);
		roleDAO.saveOrUpdate(role);
		
		
		product.setProductName("fdknmfg");
		productDAO.saveOrUpdate(product);
		
		billingaddress.setAddress("hfdjdufuinv");
		billingaddress.setContactNumber(897465);
		billingaddressDAO.saveOrUpdate(billingaddress);
		
		
		cart.setProductName("dfhjj");
		cartDAO.saveOrUpdate(cart);
		
		
		supplier.setSupplierName("hddsjk");
		supplier.setContactNumber(87968764);
		supplierDAO.saveOrUpdate(supplier);
		
		
		
		shippingaddress.setAddress("fdgfs");
		shippingaddress.setUserName("jkfgjd");
		shippingaddressDAO.saveOrUpdate(shippingaddress);
		
		
	}

}
