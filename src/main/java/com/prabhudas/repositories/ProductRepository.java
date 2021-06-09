package com.prabhudas.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.prabhudas.models.Products;

@Repository
public interface ProductRepository extends CrudRepository<Products, Integer> {
	
	@Query(value = "select * from products where status = :status order by id desc limit :n", nativeQuery = true)
	public List<Products> latestProducts(@Param("status") boolean status, @Param("n") int n);

}
