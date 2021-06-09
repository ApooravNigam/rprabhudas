package com.prabhudas.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.prabhudas.models.Company;

@Repository
public interface CompanyRepository extends CrudRepository<Company, Integer> {
	
	@Query("from Company c where c.company = null")
	public List<Company> findParentCompanies();
	
	@Query("from Company where company = null and status = :status")
	public List<Company> findParentCompaniesWithStatus(@Param("status") boolean status);

}
