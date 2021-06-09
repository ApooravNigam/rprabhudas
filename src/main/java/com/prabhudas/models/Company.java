package com.prabhudas.models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "company")
public class Company implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(nullable = false, name="id")
	Integer id;
	
//	@Column(name="name")
	String name;

	@JoinColumn(name="parent_id")
	@ManyToOne(fetch = FetchType.LAZY) 
	Company company;
	
	boolean status;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "company")
	List<Company> companies = new ArrayList<Company>(0);

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "company")
	List<Fabric> fabricList = new ArrayList<Fabric>(0);

	public Company() {
	}

	public Company(Integer id) {
		super();
		this.id = id;
	}

	public Company(Integer id, String name, Company company, boolean status,
			List<Company> companies) {
		this.id = id;
		this.name = name;
		this.company = company;
		this.status = status;
		this.companies = companies;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public List<Company> getCompanies() {
		return companies;
	}

	public void setCompanies(List<Company> companies) {
		this.companies = companies;
	}

	public List<Fabric> getFabricList() {
		return fabricList;
	}

	public void setFabricList(List<Fabric> fabricList) {
		this.fabricList = fabricList;
	}
	
}
