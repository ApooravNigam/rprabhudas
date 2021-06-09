package com.prabhudas.models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

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
@Table(name="fabric")
public class Fabric implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer id;
	
	String name, description, sku, quality_number;
	Integer sub_company_id;
	Double length, width, price_per_meter;
	boolean status;

	@JoinColumn(name="color_id")
	@ManyToOne(fetch = FetchType.LAZY)
	Colors colors;

	@JoinColumn(name="company_id")
	@ManyToOne(fetch = FetchType.LAZY)
	Company company;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "fabric")
	List<Photo> photos = new ArrayList<Photo>();
	
	public Fabric() {
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSub_company_id() {
		return sub_company_id;
	}

	public void setSub_company_id(Integer sub_company_id) {
		this.sub_company_id = sub_company_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

//	public Integer getColor_id() {
//		return color_id;
//	}
//
//	public void setColor_id(Integer color_id) {
//		this.color_id = color_id;
//	}

	public Double getLength() {
		return length;
	}

	public void setLength(Double length) {
		this.length = length;
	}

	public Double getWidth() {
		return width;
	}

	public void setWidth(Double width) {
		this.width = width;
	}

	public Double getPrice_per_meter() {
		return price_per_meter;
	}

	public void setPrice_per_meter(Double price_per_meter) {
		this.price_per_meter = price_per_meter;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getQuality_number() {
		return quality_number;
	}

	public void setQuality_number(String quality_number) {
		this.quality_number = quality_number;
	}

	public Colors getColors() {
		return colors;
	}

	public void setColors(Colors colors) {
		this.colors = colors;
	}

	public List<Photo> getPhotos() {
		return photos;
	}

	public void setPhotos(List<Photo> photos) {
		this.photos = photos;
	}
	
}
