package com.prabhudas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.prabhudas.models.Colors;
import com.prabhudas.models.Fabric;
import com.prabhudas.models.Photo;
import com.prabhudas.models.Products;
import com.prabhudas.repositories.ColorRepository;
import com.prabhudas.repositories.FabricRepository;
import com.prabhudas.repositories.PhotoRepository;
import com.prabhudas.repositories.ProductRepository;

@Transactional
@Service
public class CommonServiceImpl implements CommonService {
	
	@Autowired
	private ColorRepository colorRepository;
	
	@Autowired
	private FabricRepository fabricRepository;
	
	@Autowired
	private PhotoRepository photoRepository;
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public Iterable<Colors> findAllColors() {
		return colorRepository.findAll();
	}

	@Override
	public Colors saveColor(Colors colors) {
		return colorRepository.save(colors);
	}

	@Override
	public Iterable<Fabric> findAllFabrics() {
		return fabricRepository.findAll();
	}

	@Override
	public Fabric saveFabric(Fabric fabric) {
		return fabricRepository.save(fabric);
	}

	@Override
	public void deleteColor(int color_id) {
		colorRepository.deleteById(color_id);
	}

	@Override
	public void deleteFabric(int fabric_id) {
		fabricRepository.deleteById(fabric_id);
	}

	@Override
	public Colors findColorById(int color_id) {
		return colorRepository.findById(color_id).get();
	}

	@Override
	public Fabric findFabricById(int fabric_id) {
		return fabricRepository.findById(fabric_id).get();
	}

	@Override
	public Photo savePhoto(Photo photo) {
		return photoRepository.save(photo);
	}

	@Override
	public void deletePhoto(int id) {
		photoRepository.deleteById(id);
	}

	@Override
	public Photo findPhotoById(int id) {
		return photoRepository.findById(id).get();
	}

	@Override
	public Iterable<Products> findAllProducts() {
		return productRepository.findAll();
	}

	@Override
	public Products saveProduct(Products products) {
		return productRepository.save(products);
	}

	@Override
	public void deleteProduct(int product_id) {
		productRepository.deleteById(product_id);
		
	}

	@Override
	public Products findProductsById(int product_id) {
		return productRepository.findById(product_id).get();
	}

	@Override
	public List<Products> latestProducts(boolean status, int n) {
		return productRepository.latestProducts(status, n);
	}

}
