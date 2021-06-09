package com.prabhudas.controllers.admin;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.prabhudas.models.Account;
import com.prabhudas.models.Category;
import com.prabhudas.models.Colors;
import com.prabhudas.models.Company;
import com.prabhudas.models.Fabric;
import com.prabhudas.models.Products;
import com.prabhudas.services.AccountService;
import com.prabhudas.services.CategoryService;
import com.prabhudas.services.CommonService;

@Controller
@RequestMapping("/home/admin")
public class AdminController {
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private CommonService commonService;

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "home/admin";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, ModelMap modelMap) {
		if (error != null) {
			modelMap.put("msg", "Invalid username or Password");
		}
		if (logout != null) {
			modelMap.put("msg", "Logout Successfully");
		}
		return "home/admin/login";
	}

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcome() {
		return "redirect:/home/admin";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout() {
		return "redirect:/home/admin/login?logout";
	}

	@RequestMapping(value = "/login/accessDenied", method = RequestMethod.GET)
	public String accessDenied(Authentication authentication, ModelMap modelMap) {
		if (authentication != null) {
			modelMap.put("msg", "Hi " + authentication.getName() + ", you do not have permission to access this page.");
		} else {
			modelMap.put("msg", "You do not have permission to access this page.");
		}
		return "home/admin/login/accessDenied";
	}

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Authentication authentication, ModelMap modelMap) {
		modelMap.put("account", accountService.findByUsername(authentication.getName()));
		return "home/admin/profile";
	}

	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public String profile(@ModelAttribute("account") Account account) {
		Account currentAccount = accountService.findById(account.getAccount_id());
		if (!account.getPassword().isEmpty()) {
			String hash = new BCryptPasswordEncoder().encode(account.getPassword());
//			System.out.println("hash: " + hash);
			currentAccount.setPassword(hash);
		}
		accountService.savePassword(currentAccount);
		return "redirect:/home/admin/profile";
	}

	@RequestMapping(value = "/user_management", method = RequestMethod.GET)
	public String user_management() {
		return "home/admin/user_management";
	}

	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public String categories(ModelMap modelMap) {
		modelMap.put("categories", categoryService.findParentCategories());
		return "home/admin/categories";
	}

	@RequestMapping(value = "/add_category", method = RequestMethod.GET)
	public String addCategory(ModelMap modelMap) {
		Category category = new Category();
		category.setStatus(true);
		modelMap.put("category", category);
		return "home/admin/add_category";
	}

	@RequestMapping(value = "/add_category", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category) {
		category.setCategory(null);
		categoryService.saveCategory(category);
		return "redirect:/home/admin/categories";
	}

	@RequestMapping(value = "/delete_category/{category_id}", method = RequestMethod.GET)
	public String deleteCategory(@PathVariable("category_id")int category_id, RedirectAttributes redirectAttributes) {
		try {
			categoryService.deleteCategory(category_id);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Deleted Failed");
		}
		return "redirect:/home/admin/categories";
	}

	@RequestMapping(value = "/edit_category/{category_id}", method = RequestMethod.GET)
	public String editCategory(@PathVariable("category_id")int category_id, ModelMap modelMap) {
		modelMap.put("category", categoryService.findById(category_id));
		return "home/admin/edit_category";
	}

	@RequestMapping(value = "/edit_category", method = RequestMethod.POST)
	public String editCategory(@ModelAttribute("category") Category category) {
		categoryService.saveCategory(category);
		return "redirect:/home/admin/categories";
	}

	@RequestMapping(value = "/sub_categories/{category_id}", method = RequestMethod.GET)
	public String subCategories(@PathVariable("category_id")int category_id, ModelMap modelMap) {
		modelMap.put("category", categoryService.findById(category_id));
		return "home/admin/sub_categories";
	}

	@RequestMapping(value = "/add_sub_category/{category_id}", method = RequestMethod.GET)
	public String addSubCategory(@PathVariable("category_id")int category_id, ModelMap modelMap) {
		Category category = new Category();
		category.setStatus(true);
		category.setCategory(categoryService.findById(category_id));
		modelMap.put("category", category);
		return "home/admin/add_sub_category";
	}

	@RequestMapping(value = "/add_sub_category", method = RequestMethod.POST)
	public String addSubCategory(@ModelAttribute("category") Category category) {
		categoryService.saveCategory(category);
		return "redirect:/home/admin/sub_categories/" + category.getCategory().getCategory_id();
	}

	@RequestMapping(value = "/delete_sub_category/{category_id}", method = RequestMethod.GET)
	public String deleteSubCategory(@PathVariable("category_id")int category_id, RedirectAttributes redirectAttributes) {
		Category category = categoryService.findById(category_id);
		try {
			categoryService.deleteCategory(category_id);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Deleted Failed");
		}
		return "redirect:/home/admin/sub_categories/" + category.getCategory().getCategory_id();
	}

	@RequestMapping(value = "/edit_sub_category/{category_id}", method = RequestMethod.GET)
	public String editSubCategory(@PathVariable("category_id")int category_id, ModelMap modelMap) {
//		Category category = categoryService.findById(category_id);
		modelMap.put("category", categoryService.findById(category_id));
		return "home/admin/edit_sub_category";
	}

	@RequestMapping(value = "/edit_sub_category", method = RequestMethod.POST)
	public String editSubCategory(@ModelAttribute("category") Category category) {
		categoryService.saveCategory(category);
		return "redirect:/home/admin/sub_categories/" + category.getCategory().getCategory_id();
	}

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String products(ModelMap modelMap) {
		modelMap.put("products", commonService.findAllProducts());
		return "home/admin/products";
	}

	@RequestMapping(value = "/add_product", method = RequestMethod.GET)
	public String addProduct(ModelMap modelMap) {
		Products products = new Products();
		products.setStatus(true);
		modelMap.put("products", products);
		modelMap.put("category", categoryService.findParentCategories());
		modelMap.put("fabric", commonService.findAllFabrics());
		return "home/admin/add_product";
	}

	@RequestMapping(value = "/add_product", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("products") Products products) {
		commonService.saveProduct(products);
		return "redirect:/home/admin/products";
	}

	@RequestMapping(value = "/delete_product/{id}", method = RequestMethod.GET)
	public String deleteProduct(@PathVariable("id")int product_id, RedirectAttributes redirectAttributes) {
		try {
			commonService.deleteProduct(product_id);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Deleted Failed");
		}
		return "redirect:/home/admin/products";
	}

	@RequestMapping(value = "/edit_product/{id}", method = RequestMethod.GET)
	public String editProduct(@PathVariable("id")int product_id, ModelMap modelMap) {
		modelMap.put("products", commonService.findProductsById(product_id));
		modelMap.put("category", categoryService.findParentCategories());
		modelMap.put("fabric", commonService.findAllFabrics());
		return "home/admin/edit_product";
	}

	@RequestMapping(value = "/edit_product", method = RequestMethod.POST)
	public String editProduct(@ModelAttribute("products") Products products) {
		commonService.saveProduct(products);
		return "redirect:/home/admin/products";
	}

	@RequestMapping(value = "/colors", method = RequestMethod.GET)
	public String colors(ModelMap modelMap) {
		modelMap.put("colors", commonService.findAllColors());
		return "home/admin/colors";
	}

	@RequestMapping(value = "/add_color", method = RequestMethod.GET)
	public String addColor(ModelMap modelMap) {
		Colors colors = new Colors();
		modelMap.put("colors", colors);
		return "home/admin/add_color";
	}

	@RequestMapping(value = "/add_color", method = RequestMethod.POST)
	public String addColor(@ModelAttribute("colors") Colors colors) {
		commonService.saveColor(colors);
		return "redirect:/home/admin/colors";
	}

	@RequestMapping(value = "/delete_color/{id}", method = RequestMethod.GET)
	public String deleteColor(@PathVariable("id")int color_id, RedirectAttributes redirectAttributes) {
		try {
			commonService.deleteColor(color_id);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Deleted Failed");
		}
		return "redirect:/home/admin/colors";
	}

	@RequestMapping(value = "/edit_color/{id}", method = RequestMethod.GET)
	public String editColor(@PathVariable("id")int color_id, ModelMap modelMap) {
		modelMap.put("colors", commonService.findColorById(color_id));
		return "home/admin/edit_color";
	}
	
	@RequestMapping(value = "/edit_color", method = RequestMethod.POST)
	public String editColor(@ModelAttribute("colors") Colors colors) {
		commonService.saveColor(colors);
		return "redirect:/home/admin/colors";
	}

	@RequestMapping(value = "/designs", method = RequestMethod.GET)
	public String designs() {
		return "home/admin/designs";
	}

	@RequestMapping(value = "/fabrics", method = RequestMethod.GET)
	public String fabrics(ModelMap modelMap) {
		modelMap.put("fabric", commonService.findAllFabrics());
		return "home/admin/fabrics";
	}

	@RequestMapping(value = "/add_fabric", method = RequestMethod.GET)
	public String addFabric(ModelMap modelMap) {
		Fabric fabric = new Fabric();
		fabric.setStatus(true);
		modelMap.put("fabric", fabric);
		modelMap.put("company", categoryService.findParentCompanies());
		modelMap.put("colors", commonService.findAllColors());
		return "home/admin/add_fabric";
	}

	@RequestMapping(value = "/add_fabric", method = RequestMethod.POST)
	public String addFabric(@ModelAttribute("fabric") Fabric fabric) {
		commonService.saveFabric(fabric);
		return "redirect:/home/admin/fabrics";
	}

	@RequestMapping(value = "/delete_fabric/{id}", method = RequestMethod.GET)
	public String deleteFabric(@PathVariable("id")int fabric_id, RedirectAttributes redirectAttributes) {
		try {
			commonService.deleteFabric(fabric_id);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Deleted Failed");
		}
		return "redirect:/home/admin/fabrics";
	}

	@RequestMapping(value = "/edit_fabric/{id}", method = RequestMethod.GET)
	public String editFabric(@PathVariable("id")int fabric_id, ModelMap modelMap) {
		modelMap.put("fabric", commonService.findFabricById(fabric_id));
		modelMap.put("colors", commonService.findAllColors());
		return "home/admin/edit_fabric";
	}
	
	@RequestMapping(value = "/edit_fabric", method = RequestMethod.POST)
	public String editFabric(@ModelAttribute("fabric") Fabric fabric) {
		commonService.saveFabric(fabric);
		return "redirect:/home/admin/fabrics";
	}

	@RequestMapping(value = "/measurements", method = RequestMethod.GET)
	public String measurements() {
		return "home/admin/measurements";
	}

	@RequestMapping(value = "/media", method = RequestMethod.GET)
	public String media() {
		return "home/admin/media";
	}

	@RequestMapping(value = "/orders", method = RequestMethod.GET)
	public String orders() {
		return "home/admin/orders";
	}

	@RequestMapping(value = "/role_management", method = RequestMethod.GET)
	public String role_management() {
		return "home/admin/role_management";
	}

	@RequestMapping(value = "/companies", method = RequestMethod.GET)
	public String companies(ModelMap modelMap) {
		modelMap.put("companies", categoryService.findParentCompanies());
		return "home/admin/companies";
	}

	@RequestMapping(value = "/add_company", method = RequestMethod.GET)
	public String addCompany(ModelMap modelMap) {
		Company company = new Company();
		company.setStatus(true);
		modelMap.put("company", company);
		return "home/admin/add_company";
	}

	@RequestMapping(value = "/add_company", method = RequestMethod.POST)
	public String addCompany(@ModelAttribute("company") Company company) {
		company.setCompany(null);
		categoryService.saveCompany(company);
		return "redirect:/home/admin/companies";
	}

	@RequestMapping(value = "/delete_company/{id}", method = RequestMethod.GET)
	public String deleteCompany(@PathVariable("id")int company_id, RedirectAttributes redirectAttributes) {
		try {
			categoryService.deleteCompany(company_id);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Deleted Failed");
		}
		return "redirect:/home/admin/companies";
	}

	@RequestMapping(value = "/edit_company/{id}", method = RequestMethod.GET)
	public String editCompany(@PathVariable("id")int company_id, ModelMap modelMap) {
		modelMap.put("company", categoryService.findCompanyById(company_id));
		return "home/admin/edit_company";
	}

	@RequestMapping(value = "/edit_company", method = RequestMethod.POST)
	public String editCompany(@ModelAttribute("company") Company company) {
		categoryService.saveCompany(company);
		return "redirect:/home/admin/companies";
	}

	@RequestMapping(value = "/sub_companies/{id}", method = RequestMethod.GET)
	public String subCompanies(@PathVariable("id")int company_id, ModelMap modelMap) {
		modelMap.put("company", categoryService.findCompanyById(company_id));
		return "home/admin/sub_companies";
	}

	@ResponseBody
	@RequestMapping(value = "/get_sub_companies/{id}", method = RequestMethod.GET)
	public List<Map<String, Object>> getSubCompanies(@PathVariable("id")int company_id, ModelMap modelMap) {
		Company company = categoryService.findCompanyById(company_id);
		List<Company> companies = new ArrayList<Company>();
		companies = company.getCompanies();
		List<Map<String, Object>> companyList = new ArrayList<Map<String,Object>>();
		if (!companies.isEmpty()) {
			for (Company company2 : companies) {
				Map<String, Object> map = new ModelMap();
				map.put("id", company2.getId());
				map.put("name", company2.getName());
				companyList.add(map);
			}
		}
		return companyList;
	}

	@RequestMapping(value = "/add_sub_company/{id}", method = RequestMethod.GET)
	public String addSubCompany(HttpServletRequest request, @PathVariable("id")int company_id, ModelMap modelMap) {
		Company company = new Company();
		company.setStatus(true);
		company.setCompany(categoryService.findCompanyById(company_id));
		modelMap.put("company", company);
		return "home/admin/add_sub_company";
	}

	@RequestMapping(value = "/add_sub_company", method = RequestMethod.POST)
	public String addSubCompany(@ModelAttribute("company") Company company) {
		categoryService.saveCompany(company);
		return "redirect:/home/admin/sub_companies/" + company.getCompany().getId();
	}

	@RequestMapping(value = "/delete_sub_company/{id}", method = RequestMethod.GET)
	public String deleteSubCompany(@PathVariable("id")int company_id, RedirectAttributes redirectAttributes) {
		Company company = categoryService.findCompanyById(company_id);
		try {
			categoryService.deleteCompany(company_id);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Deleted Failed");
		}
		return "redirect:/home/admin/sub_companies/" + company.getCompany().getId();
	}

	@RequestMapping(value = "/edit_sub_company/{id}", method = RequestMethod.GET)
	public String editSubCompany(@PathVariable("id")int company_id, ModelMap modelMap) {
//		Category category = categoryService.findById(category_id);
		modelMap.put("company", categoryService.findCompanyById(company_id));
		return "home/admin/edit_sub_company";
	}

	@RequestMapping(value = "/edit_sub_company", method = RequestMethod.POST)
	public String editSubCompany(@ModelAttribute("company") Company company) {
		categoryService.saveCompany(company);
		return "redirect:/home/admin/sub_companies/" + company.getCompany().getId();
	}

}
