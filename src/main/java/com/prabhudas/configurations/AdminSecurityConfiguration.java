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
@Order(2)
public class AdminSecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private AccountService accountService;
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	 @Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(accountService).passwordEncoder(passwordEncoder);
	}
	
	@Override
	protected void configure(HttpSecurity httpSecurity) throws Exception {
		httpSecurity.cors().and().csrf().disable();
		httpSecurity.antMatcher("/home/admin/**")
					.authorizeRequests()
					.antMatchers("/home/admin**")
					.authenticated()
					.and()
					.formLogin()
					.loginPage("/home/admin/login")
					.loginProcessingUrl("/home/admin/process-login")
					.defaultSuccessUrl("/home/admin/welcome")
					.failureUrl("/home/admin/login?error")
					.usernameParameter("username")
					.passwordParameter("password")
					.and()
					.logout()
					.logoutUrl("/home/admin/process-logout")
					.logoutSuccessUrl("/home/admin/login?logout")
					.deleteCookies("JSESESIONID")
					.and()
					.exceptionHandling()
					.accessDeniedPage("/home/admin/accessDenied");
	}
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder builder) throws Exception {
		builder.userDetailsService(accountService);
	}
	
	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public SecurityContextHolderAwareRequestFilter awareRequestFilter() {
		return new SecurityContextHolderAwareRequestFilter();
	}
	
	@Bean
	public SecurityContextPersistenceFilter persistenceFilter() {
		return new SecurityContextPersistenceFilter();
	}

}
