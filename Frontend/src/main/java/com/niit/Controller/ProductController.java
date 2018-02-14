package com.niit.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CategoryDAO;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.SupplierDAO;
import com.niit.Model.Category;
import com.niit.Model.Product;
import com.niit.Model.Supplier;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO  productDao;
	@Autowired
	private CategoryDAO categoryDao;
	
	@Autowired
	private SupplierDAO supplierDao;
	
	
	
	@RequestMapping("Product")
	public ModelAndView newProduct(){
		
		ModelAndView mv = new ModelAndView("Product");
		List<Category> categoryList = categoryDao.list();
		List<Supplier> supplierList = supplierDao.list();
		mv.addObject("supplierList", supplierList);
		mv.addObject("categoryList", categoryList);
		mv.addObject("AddProductButtonClicked", true);
		return mv;
	}
	@RequestMapping("addProduct")
	public String addProduct(@ModelAttribute Product product, @RequestParam("file") MultipartFile file ,Model model){
		productDao.saveOrUpdate(product);
		
		String path = "E://Reshma/Frontend/src/main/webapp/WEB-INF/resources/images/product/";
		FileUtil.upload(path, file, product.getProductId()+".jpg");
		
		model.addAttribute("ViewProductButtonClicked", true);
		
		return "redirect:ViewProduct";
		
	}
	@RequestMapping("ViewProduct")
	public String viewProducts(Model model){
		
		List<Product> productList = productDao.list();
		model.addAttribute("productList", productList);
		model.addAttribute("ViewProductButtonClicked", true);
		return "Product";
		
		
	}
	
	@RequestMapping("deleteProduct")
	public String deleteProducts(@RequestParam("productId") int productid, Model model){
		
		productDao.delete(productid);
		return "redirect:ViewProduct";
	}
	
	@RequestMapping("editProduct")
	public ModelAndView editProduct(@RequestParam ("productId") int productId, Model model){
		ModelAndView mv = new ModelAndView("Product");
		List<Category> categoryList = categoryDao.list();
		List<Supplier> supplierList = supplierDao.list();
		Product product = productDao.getByProductId(productId);
		model.addAttribute("product", product);
		mv.addObject("supplierList", supplierList);
		mv.addObject("categoryList", categoryList);
		model.addAttribute("editProductClicked", true);
		return mv;
	}
	@RequestMapping("productEdited")
	public String productEdited(@ModelAttribute Product product){
		
		productDao.saveOrUpdate(product);
		return "redirect:ViewProduct";
	}
	
	@RequestMapping("ProductDescription")
	public String ProductDescription(@RequestParam ("productId") int productId, Model model){
		Product product = productDao.getByProductId(productId);
		model.addAttribute("product", product);
		return "ProductDescription";
	
	}

	@RequestMapping("DisplayProduct")
	public String ProductDisplay(@RequestParam ("suppliername") String suppliername, Model model){
		List<Product> product = productDao.getBySupplierName(suppliername);
		model.addAttribute("product", product);
		return "DisplayProduct";
	}
	
	@RequestMapping("product")
	public String albums( Model model){
		List<Product> product = productDao.list();
		model.addAttribute("product", product);
		return "DisplayProduct";
	}

}