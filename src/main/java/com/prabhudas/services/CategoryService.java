package com.prabhudas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.prabhudas.models.Category;
import com.prabhudas.models.Company;

@Service
public interface CategoryService {
	
//	Category Service

	public Iterable<Category> findAll();
	
	public Category findCategory(int category_id);
	
	public List<Category> findParentCategories();
	
	public Category saveCategory(Category category);
	
	public void deleteCategory(int category_id);
	
	public Category findById(int category_id);
	
	public List<Category> findParentCategoriesWithStatus(boolean status);
	
//	Category Service
	
//	Company Service

	public Iterable<Company> findAllCompanies();
	
	public Company findCompany(int company_id);
	
	public List<Company> findParentCompanies();
	
	public Company saveCompany(Company company);
	
	public void deleteCompany(int company_id);
	
	public Company findCompanyById(int company_id);
	
	public List<Company> findParentCompaniesWithStatus(boolean status);
	
//	Company Service
	
}
