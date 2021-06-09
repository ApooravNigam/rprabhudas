package com.prabhudas.controllers.admin;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.prabhudas.models.Fabric;
import com.prabhudas.models.Photo;
import com.prabhudas.models.Products;
import com.prabhudas.services.CommonService;

@Controller
@RequestMapping("/home/admin")
public class PhotoController implements ServletContextAware {
	
	private ServletContext servletContext;
	
	@Autowired
	private CommonService commonService;
	
	@RequestMapping(value = "/photo/products/{id}", method = RequestMethod.GET)
	public String productPhotos(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("products", commonService.findProductsById(id));
		return "home/admin/photo/products";
	}
	
	@RequestMapping(value = "/photo/add/products/{id}", method = RequestMethod.GET)
	public String uploadProductPhoto(@PathVariable("id") int id, ModelMap modelMap) {
		Products products = commonService.findProductsById(id);
		Photo photo = new Photo();
		photo.setStatus(true);
		photo.setProducts(products);
		modelMap.put("photo", photo);
		modelMap.put("products", products);
		return "home/admin/photo/add/products";
	}
	
	@RequestMapping(value = "/photo/add/products", method = RequestMethod.POST)
	public String uploadProductPhoto(@ModelAttribute("photo") Photo photo, @RequestParam(value = "file") MultipartFile file) {
		photo.setName(uploadFile(file));
		if (photo.isMain()) {
			Products products = commonService.findProductsById(photo.getProducts().getId());
			if (products.getPhotos() != null && !products.getPhotos().isEmpty()) {
				for (Photo p : products.getPhotos()) {
					p.setMain(false);
					commonService.savePhoto(p);
				}
			}
			photo.setMain(true);
		}
		commonService.savePhoto(photo);
		return "redirect:/home/admin/photo/products/" + photo.getProducts().getId();
	}

	@RequestMapping(value = "/photo/delete/products/{id}/{product_id}", method = RequestMethod.GET)
	public String deleteProductPhoto(@PathVariable("id")int id, @PathVariable("product_id")int product_id, RedirectAttributes redirectAttributes) {
		try {
			commonService.deletePhoto(id);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Deleted Failed");
		}
		return "redirect:/home/admin/photo/products/" + product_id;
	}

	@RequestMapping(value = "/photo/edit/products/{id}", method = RequestMethod.GET)
	public String editProductPhoto(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("photo", commonService.findPhotoById(id));
		return "home/admin/photo/edit/products";
	}
	
	@RequestMapping(value = "/photo/edit/products", method = RequestMethod.POST)
	public String editProductPhoto(@ModelAttribute("photo") Photo photo, @RequestParam(value = "file") MultipartFile file) {
		Photo currentPhoto = commonService.findPhotoById(photo.getId());
		if (file != null && !file.getOriginalFilename().isEmpty()) {
			currentPhoto.setName(uploadFile(file));
		}
		currentPhoto.setStatus(photo.isStatus());
		Products products = commonService.findProductsById(photo.getProducts().getId());
		if (photo.isMain()) {
			for (Photo p : products.getPhotos()) {
				p.setMain(false);
				commonService.savePhoto(p);
			}
			currentPhoto.setMain(true);
		}
		commonService.savePhoto(currentPhoto);
		return "redirect:/home/admin/photo/products/" + photo.getProducts().getId();
	}
	
	@RequestMapping(value = "/photo/fabric/{id}", method = RequestMethod.GET)
	public String fabricPhotos(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("fabric", commonService.findFabricById(id));
		return "home/admin/photo/fabric";
	}
	
	@RequestMapping(value = "/photo/add/fabric/{id}", method = RequestMethod.GET)
	public String uploadFabricPhoto(@PathVariable("id") int id, ModelMap modelMap) {
		Fabric fabric = commonService.findFabricById(id);
		Photo photo = new Photo();
		photo.setStatus(true);
		photo.setFabric(fabric);
		modelMap.put("photo", photo);
		modelMap.put("fabric", fabric);
		return "home/admin/photo/add/fabric";
	}
	
	@RequestMapping(value = "/photo/add/fabric", method = RequestMethod.POST)
	public String uploadFabricPhoto(@ModelAttribute("photo") Photo photo, @RequestParam(value = "file") MultipartFile file) {
		photo.setName(uploadFile(file));
		if (photo.isMain()) {
			Fabric fabric = commonService.findFabricById(photo.getFabric().getId());
			if (fabric.getPhotos() != null && !fabric.getPhotos().isEmpty()) {
				for (Photo p : fabric.getPhotos()) {
					p.setMain(false);
					commonService.savePhoto(p);
				}
			}
			photo.setMain(true);
		}
		commonService.savePhoto(photo);
		return "redirect:/home/admin/photo/fabric/" + photo.getFabric().getId();
	}

	@RequestMapping(value = "/photo/delete/fabric/{id}/{fabric_id}", method = RequestMethod.GET)
	public String deleteFabricPhoto(@PathVariable("id")int id, @PathVariable("fabric_id")int fabric_id, RedirectAttributes redirectAttributes) {
		try {
			commonService.deletePhoto(id);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Deleted Failed");
		}
		return "redirect:/home/admin/photo/fabric/" + fabric_id;
	}

	@RequestMapping(value = "/photo/edit/fabric/{id}", method = RequestMethod.GET)
	public String editFabricPhoto(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("photo", commonService.findPhotoById(id));
		return "home/admin/photo/edit/fabric";
	}
	
	@RequestMapping(value = "/photo/edit/fabric", method = RequestMethod.POST)
	public String editFabricPhoto(@ModelAttribute("photo") Photo photo, @RequestParam(value = "file") MultipartFile file) {
		Photo currentPhoto = commonService.findPhotoById(photo.getId());
		if (file != null && !file.getOriginalFilename().isEmpty()) {
			currentPhoto.setName(uploadFile(file));
		}
		currentPhoto.setStatus(photo.isStatus());
		Fabric fabric = commonService.findFabricById(photo.getFabric().getId());
		if (photo.isMain()) {
			for (Photo p : fabric.getPhotos()) {
				p.setMain(false);
				commonService.savePhoto(p);
			}
			currentPhoto.setMain(true);
		}
		commonService.savePhoto(currentPhoto);
		return "redirect:/home/admin/photo/fabric/" + photo.getFabric().getId();
	}
	
	private String uploadFile(MultipartFile multipartFile) {
		try {
			byte[] bytes = multipartFile.getBytes();
			Path path = Paths.get(servletContext.getRealPath("/uploads/images/" + multipartFile.getOriginalFilename()));
			Files.write(path, bytes);
			return multipartFile.getOriginalFilename();
		} catch (Exception e) {
			return "no-image.png";
		}
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

}
