package com.prabhudas.services;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import com.prabhudas.models.Account;

@Service("accountService")
public interface AccountService extends UserDetailsService {

	public Account findByUsername(String username);
	
	public Account findById(int account_id);

	public Account savePassword(Account account);
	
}
