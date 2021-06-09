package com.prabhudas.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.prabhudas.models.Account;

@Repository
public interface AccountRepository extends CrudRepository<Account, Integer> {

	public Account findByUsername(String username);

}
