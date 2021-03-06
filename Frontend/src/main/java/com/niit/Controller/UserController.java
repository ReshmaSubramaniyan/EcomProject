package com.niit.Controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.DAO.ProductDAO;
import com.niit.DAO.RoleDAO;
import com.niit.DAO.ShipmentDAO;
import com.niit.DAO.UserDAO;
import com.niit.Model.Product;
import com.niit.Model.Role;
import com.niit.Model.Shipment;
import com.niit.Model.User;


@Controller
public class UserController {

	@Autowired
	private UserDAO userDAO;
	@Autowired
	
	ShipmentDAO ShipmentDao;
	@Autowired
	private ProductDAO productDAO;

	
	@Autowired
	private RoleDAO roleDAO;

	@Autowired
	private Role role;

	@RequestMapping("addNewUser")
	public String addUser(@ModelAttribute User user, @ModelAttribute Shipment shipment,  Model model) {
		
		String message;
		
		if(userDAO.isAllReadyRegister(user.getEmailId(), true)){
			message = "Your emailId is Alread registered you have to login";
			
		}
		else{
			
		
		user.setEnabled(true);
		role.setEmailId(user.getEmailId());
		role.setRole("ROLE_USER");
		role.setUserName(user.getUserName());
		role.setContactNumber(user.getContactNumber());

		user.setRole(role);
		role.setUser(user);

		userDAO.saveOrUpdate(user);
		roleDAO.saveOrUpdate(role);
		
		shipment.setUserId(user.getUserId());
		ShipmentDao.saveOrUpdate(shipment);
		
		
		message = "You have Successfully Registered";
		}
		model.addAttribute("message", message);
		model.addAttribute("loginButtonClicked", true);
		return "index";

	}
	@RequestMapping("/afterlogin")
	public String loginProcess(Principal p, Model model){
		
		String email = p.getName();
		
		User user = userDAO.getByEmailId(email);
	
		Role role = roleDAO.getByEmailId(email);
		
		String role1 = role.getRole();
		
		if(role1.equals("ROLE_ADMIN")){
			
			return "index";
		}
		else if(role1.equals("ROLE_USER")){
			List<Product> productList = productDAO.list();
			model.addAttribute("productList", productList);
			model.addAttribute("userLoggedIn", "true");
			return "index";
		}
		else{		
		
		return "index";
		}
	}
	
}
