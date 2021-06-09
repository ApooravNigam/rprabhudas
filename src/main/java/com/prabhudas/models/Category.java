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
@Table(name = "category")
public class Category implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(nullable = false, name="category_id")
	Integer category_id;
	
//	@Column(name="name")
	String name;

	@JoinColumn(name="parent_id")
	@ManyToOne(fetch = FetchType.LAZY) 
	Category category;
	
	boolean status;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "category")
	List<Category> categories = new ArrayList<Category>(0);

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "category")
	List<Products> productList = new ArrayList<Products>(0);

	public Category() {
	}

	public Category(Integer category_id) {
		super();
		this.category_id = category_id;
	}

	public Category(Integer category_id, String name, Category category, boolean status,
			List<Category> categories) {
		this.category_id = category_id;
		this.name = name;
		this.category = category;
		this.status = status;
//		this.parent_id = parent_id;
		this.categories = categories;
	}

	public Integer getCategory_id() {
		return category_id;
	}

	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public List<Products> getProductList() {
		return productList;
	}

	public void setProductList(List<Products> productList) {
		this.productList = productList;
	}
	
}
