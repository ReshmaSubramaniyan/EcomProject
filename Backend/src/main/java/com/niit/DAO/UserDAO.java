package com.niit.DAO;



import java.util.List;

import com.niit.Model.User;

public interface UserDAO {
	
		public List<User> list();
		
		public User getByUserId(int userid);
		
		public User getByUserName(String userame);		
		
			
		
		public User getByEmailId(String emailid);
		
	    public User getByPassword(String password);
	     
	    public User getByContactNumber(int contactnumber);
	    
	    public User getByAddress(String address);
	    
	    public User getByZipcode(int zipcode);
	    
	    public User getByRole(String role);
		
		public boolean isAllReadyRegister(String email, boolean b);
		
		public void saveOrUpdate(User user);
			
		public void delete(int UserId);

		}