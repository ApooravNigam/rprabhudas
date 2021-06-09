package com.prabhudas.configurations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.context.SecurityContextPersistenceFilter;
import org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter;

import com.prabhudas.services.AccountService;

@EnableWebSecurity
@Configuration
@Order(1)
public class CustomerSecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private AccountService accountService;
	
	@Override
	protected void configure(HttpSecurity httpSecurity) throws Exception {
		httpSecurity.cors().and().csrf().disable();
		httpSecurity.antMatcher("/customer/**")
					.authorizeRequests()
					.antMatchers("/customer/**")
					.access("hasRole('Customer')")
					.and()
					.formLogin()
					.loginPage("/customer-panel")
					.loginProcessingUrl("/customer/process-login")
					.defaultSuccessUrl("/customer-panel/welcome")
					.failureUrl("/customer-panel/login?error")
					.usernameParameter("email")
					.passwordParameter("password")
					.and()
					.logout()
					.logoutUrl("/customer-panel/process-logout")
					.logoutSuccessUrl("/customer-panel/login?logout")
					.deleteCookies("JSESESIONID")
					.and()
					.exceptionHandling()
					.accessDeniedPage("/customer-panel/accessDenied");
	}
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder builder) throws Exception {
		builder.userDetailsService(accountService);
	}
	
	@Bean
	public BCryptPasswordEncoder encoderCustomer() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public SecurityContextHolderAwareRequestFilter awareRequestFilterCustomer() {
		return new SecurityContextHolderAwareRequestFilter();
	}
	
	@Bean
	public SecurityContextPersistenceFilter persistenceFilterCustomer() {
		return new SecurityContextPersistenceFilter();
	}

}
