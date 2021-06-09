package com.prabhudas.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prabhudas.models.Category;
import com.prabhudas.services.CategoryService;
import com.prabhudas.services.CommonService;

@Controller
public class HomeController {
	
	@Autowired
	private CommonService commonService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/home")
	public String index(ModelMap modelMap) {
		modelMap.put("latestProducts", commonService.latestProducts(true, 6));
		return "home";
	}
	
	@RequestMapping("/home/product/details/{id}")
	public String productDetails(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("productDetails", commonService.findProductsById(id));
		modelMap.put("fabricList", commonService.findAllFabrics());
		modelMap.put("companyList", categoryService.findParentCompanies());
		modelMap.put("colorList", commonService.findAllColors());
		return "home/product/details";
	}
	
	@RequestMapping("/home/product/category/{category_id}")
	public String productCategory(@PathVariable("category_id") int id, ModelMap modelMap) {
		Category category = categoryService.findById(id);
		modelMap.put("category", category);
		return "home/product/category";
	}
	
}
