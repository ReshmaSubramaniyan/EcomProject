package com.niit.DAO;


import java.util.List;

import com.niit.Model.Cart;

public interface CartDAO {

	public Cart getByItemId(int itemId);
	
	public void saveOrUpdate(Cart cartitem);
	
	public void save(Cart cartitem);
	
	public List<Cart> list();
	
	public List<Cart> getCartItems(String username);
	
	public void deleteCartItem(Cart cart);
	
	public Cart getByUserandProduct(String username, int productId);
	
	public boolean itemAlreadyExist(String username, int productId);
	
	public boolean getByUserName(String username);
	
	public List<Cart> getDispatchItems(String username);
	
	public List<Cart> getAllItems();
	
	public  List<Cart> getByEmailId(String email);
}
