package com.prabhudas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.prabhudas.models.Category;
import com.prabhudas.models.Company;
import com.prabhudas.repositories.CategoryRepository;
import com.prabhudas.repositories.CompanyRepository;

@Transactional
@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryRepository categoryRepository;

	@Autowired
	private CompanyRepository companyRepository;
	
	@Override
	public Iterable<Category> findAll() {
		return categoryRepository.findAll();
	}

	@Override
	public List<Category> findParentCategories() {
		return categoryRepository.findParentCategories();
	}

	@Override
	public Category saveCategory(Category category) {
		return categoryRepository.save(category);
	}

	@Override
	public void deleteCategory(int category_id) {
		categoryRepository.deleteById(category_id);
	}

	@Override
	public Category findById(int category_id) {
		return categoryRepository.findById(category_id).get();
	}

	@Override
	public List<Category> findParentCategoriesWithStatus(boolean status) {
		return categoryRepository.findParentCategoriesWithStatus(status);
	}

	@Override
	public Category findCategory(int category_id) {
		return categoryRepository.findById(category_id).get();
	}

	@Override
	public Iterable<Company> findAllCompanies() {
		return companyRepository.findAll();
	}

	@Override
	public Company findCompany(int company_id) {
		return companyRepository.findById(company_id).get();
	}

	@Override
	public List<Company> findParentCompanies() {
		return companyRepository.findParentCompanies();
	}

	@Override
	public Company saveCompany(Company company) {
		return companyRepository.save(company);
	}

	@Override
	public void deleteCompany(int company_id) {
		companyRepository.deleteById(company_id);
	}

	@Override
	public Company findCompanyById(int company_id) {
		return companyRepository.findById(company_id).get();
	}

	@Override
	public List<Company> findParentCompaniesWithStatus(boolean status) {
		return companyRepository.findParentCompaniesWithStatus(status);
	}

}
