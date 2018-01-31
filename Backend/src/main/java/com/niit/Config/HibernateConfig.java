package com.niit.Config;


import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.DAO.BillingaddressDAO;
import com.niit.DAO.CartDAO;
import com.niit.DAO.CategoryDAO;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.RoleDAO;
import com.niit.DAO.ShippingaddressDAO;
import com.niit.DAO.SupplierDAO;
import com.niit.DAO.UserDAO;
import com.niit.DAOImpl.BillingaddressDAOImpl;
import com.niit.DAOImpl.CartDAOImpl;
import com.niit.DAOImpl.CategoryDAOImpl;
import com.niit.DAOImpl.ProductDAOImpl;
import com.niit.DAOImpl.RoleDAOImpl;
import com.niit.DAOImpl.ShippingaddressDAOImpl;
import com.niit.DAOImpl.SupplierDAOImpl;
import com.niit.DAOImpl.UserDAOImpl;
import com.niit.Model.Billingaddress;
import com.niit.Model.Cart;
import com.niit.Model.Category;
import com.niit.Model.Product;
import com.niit.Model.Role;
import com.niit.Model.Shippingaddress;
import com.niit.Model.Supplier;
import com.niit.Model.User;

@Configuration
@ComponentScan("com.niit.*")
@EnableTransactionManagement
public class HibernateConfig {

	@Bean(name = "dataSource")
	public DataSource getH2DataSource() {

		DriverManagerDataSource dataSource = new DriverManagerDataSource();
			
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/Frontend");

		dataSource.setDriverClassName("org.h2.Driver");

		dataSource.setUsername("sa");
		dataSource.setPassword("");
		
		
		return dataSource;
	}
	
	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.hbm2ddl.auto", "update");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.format_sql", "true");
		return properties;
	}
	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {

		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		
		sessionBuilder.addAnnotatedClass(User.class);
		sessionBuilder.addAnnotatedClass(Category.class);
		sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.addAnnotatedClass(Billingaddress.class);
		sessionBuilder.addAnnotatedClass(Cart.class);
		sessionBuilder.addAnnotatedClass(Supplier.class);
		sessionBuilder.addAnnotatedClass(Shippingaddress.class);
		sessionBuilder.addAnnotatedClass(Role.class);
		return sessionBuilder.buildSessionFactory();
	}
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);

		return transactionManager;
	}
	
	
	
	@Autowired(required = true)
	@Bean(name = "UserDAO")
	public UserDAO getUserDAO(SessionFactory sessionFactory) {
		return new UserDAOImpl(sessionFactory);
	}

	@Autowired(required = true)
	@Bean(name = "CategoryDAO")
	public CategoryDAO getCategoryDAO(SessionFactory sessionFactory) {
		return new CategoryDAOImpl(sessionFactory);
	}
	
	
	
	@Autowired(required = true)
	@Bean(name = "ProductDAO")
	public ProductDAO getProductDAO(SessionFactory sessionFactory) {
		return new ProductDAOImpl(sessionFactory);
	}
	
	@Autowired(required = true)
	@Bean(name = "BillingaddressDAO")
	public BillingaddressDAO getBillingaddresstDAO(SessionFactory sessionFactory) {
		return new BillingaddressDAOImpl(sessionFactory);
	}
	
	@Autowired(required = true)
	@Bean(name = "CartDAO")
	public CartDAO getCartDAO(SessionFactory sessionFactory) {
		return new CartDAOImpl(sessionFactory);
	}
	
	@Autowired(required = true)
	@Bean(name = "SupplierDAO")
	public SupplierDAO getSupplierDAO(SessionFactory sessionFactory) {
		return new SupplierDAOImpl(sessionFactory);
	}
	
	
	@Autowired(required = true)
	@Bean(name = "ShippingaddressDAO")
	public ShippingaddressDAO getShippingaddressDAO(SessionFactory sessionFactory) {
		return new ShippingaddressDAOImpl(sessionFactory);
	}
	@Autowired(required = true)
	@Bean(name = "RoleDAO")
	public RoleDAO getRoleDAO(SessionFactory sessionFactory) {
		return new RoleDAOImpl(sessionFactory);
	}

}
