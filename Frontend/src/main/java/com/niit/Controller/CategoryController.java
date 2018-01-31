package com.niit.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.DAO.CartDAO;
import com.niit.DAO.CategoryDAO;
import com.niit.Model.Cart;
import com.niit.Model.Category;

@Controller
public class CategoryController {
	
		@Autowired
		private CategoryDAO categoryDao;
		@Autowired
		private CartDAO cartDao;
		
		@RequestMapping("Category")
		public String NewCategory(Model model)	{
			
			model.addAttribute("AddCategoryButtonClicked", true);
			return "Category";
			
		}
		
		@RequestMapping("addCategory")
		public String addCategory(@ModelAttribute Category category, Model model){
			categoryDao.saveOrUpdate(category);
			
			return "redirect:ViewCategory";
		
		}
		@RequestMapping("ViewCategory")
		public String ViewCategory(Model model){
			List<Category> categoryList = categoryDao.list();
			model.addAttribute("categoryList", categoryList);
			model.addAttribute("ViewCategoryButtonClicked", true);
			return "Category";
		}
		@RequestMapping("deleteCategory")
		public String deleteCategory(@RequestParam ("categoryId") int categoryId){
			
			categoryDao.delete(categoryId);
			
			return "redirect:ViewCategory";
						
		}
		@RequestMapping("editCategory")
		public String editCategory(@RequestParam ("categoryId") int categoryId, Model model){
			Category category = categoryDao.getByCategoryId(categoryId);
			model.addAttribute("category", category);
			model.addAttribute("editCategoryClicked", true);
			return "Category";
			
		}
		@RequestMapping("categoryEdited")
		public String categoryEdited(@ModelAttribute Category category){
			
			categoryDao.saveOrUpdate(category);
			return "redirect:ViewCategory";
		}
		
		@RequestMapping("adminCart")
		public String adminCart(Model model){
			List<Cart> cartList = cartDao.list();
			model.addAttribute("cartList", cartList);
			model.addAttribute("adminCartClicked", true);
			return "Category";
			
			
		}
		}