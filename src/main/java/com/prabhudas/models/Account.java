package com.prabhudas.models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "account", catalog = "r_prabhudas")
public class Account implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	int account_id;
	int user_type_id;
	String  f_name, m_name, l_name, contact_number, username, password, created_at, updated_at, user_type;
//	UserType userType;
	
	public Account(int account_id, int user_type_id, String f_name, String m_name, String l_name, String contact_number,
			String username, String password, String created_at, String updated_at, String user_type) {
		super();
		this.account_id = account_id;
		this.user_type_id = user_type_id;
		this.f_name = f_name;
		this.m_name = m_name;
		this.l_name = l_name;
		this.contact_number = contact_number;
		this.username = username;
		this.password = password;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.user_type = user_type;
	}
	
	public Account() {
	}

	public int getAccount_id() {
		return account_id;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	public int getUser_type_id() {
		return user_type_id;
	}
	public void setUser_type_id(int user_type_id) {
		this.user_type_id = user_type_id;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public String getContact_number() {
		return contact_number;
	}
	public void setContact_number(String contact_number) {
		this.contact_number = contact_number;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public String getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
	}
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
		
	
}
