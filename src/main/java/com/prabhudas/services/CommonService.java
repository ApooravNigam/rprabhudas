package com.prabhudas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.prabhudas.models.Colors;
import com.prabhudas.models.Fabric;
import com.prabhudas.models.Photo;
import com.prabhudas.models.Products;

@Service
public interface CommonService {
	
//	Colors Service

	public Iterable<Colors> findAllColors();
	
	public Colors saveColor(Colors colors);
	
	public void deleteColor(int color_id);
	
	public Colors findColorById(int color_id);

//	Colors Service

//	Fabric Service
	
	public Iterable<Fabric> findAllFabrics();
	
	public Fabric saveFabric(Fabric fabric);
	
	public void deleteFabric(int fabric_id);
	
	public Fabric findFabricById(int fabric_id);

//	Fabric Service

//	Photo Service
	
	public Photo savePhoto(Photo photo);
	
	public void deletePhoto(int id);
	
	public Photo findPhotoById(int id);
	
//	Photo Service

//	Product Service
	
	public Iterable<Products> findAllProducts();
	
	public Products saveProduct(Products products);
	
	public void deleteProduct(int product_id);
	
	public Products findProductsById(int product_id);
	
	public List<Products> latestProducts(boolean status, int n);

//	Product Service

}
