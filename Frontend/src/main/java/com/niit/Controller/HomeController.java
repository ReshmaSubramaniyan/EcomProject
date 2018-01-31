package com.niit.Controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	

	@RequestMapping("/")

	public String homePage(Model model) {
		System.out.println("home controller");

		return "index";
	}

	@RequestMapping("/Signup")
	public String Signuppage(Model model) {

		return "Signup";
	}

	@RequestMapping("/login")
	public String loginpage(Model model) {

		return "login";
	}
	
	
}


	