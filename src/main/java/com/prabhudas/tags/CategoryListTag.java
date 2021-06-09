package com.prabhudas.tags;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.AutowireCapableBeanFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.tags.RequestContextAwareTag;

import com.prabhudas.models.Category;
import com.prabhudas.services.CategoryService;

public class CategoryListTag extends RequestContextAwareTag {
	
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private CategoryService categoryService;

	@Override
	protected int doStartTagInternal() throws Exception {
		if (categoryService == null) {
			WebApplicationContext webApplicationContext = getRequestContext().getWebApplicationContext();
			AutowireCapableBeanFactory autowireCapableBeanFactory = webApplicationContext.getAutowireCapableBeanFactory();
			autowireCapableBeanFactory.autowireBean(this);
		}
		return SKIP_BODY;
	}
	
	@Override
	public void doFinally() {
		JspWriter writer = pageContext.getOut();
		try {
			writer.write("<ul class=\"site-menu js-clone-nav d-none d-lg-block\" id=\"menunav\">");
			List<Category> categories = categoryService.findParentCategoriesWithStatus(true);
			writer.write("<li><a href=\"/home\">Home</a></li>");
			writer.write("<li><a href=\"#\">About Us</a></li>");
			if (categories != null) {
				for (Category category : categories) {
					writer.write("<li><a href=\"#\">" + category.getName() + " &nbsp;&nbsp;<span><i class=\"fa fa-angle-down\"></i></span></a>");
					if (!category.getCategories().isEmpty()) {
						writer.write("<ul>");
						for (Category subCategory : category.getCategories()) {
							writer.write("<li><a href='" + pageContext.getServletContext().getContextPath() + "/home/product/category/" + subCategory.getCategory_id() + "'>" + subCategory.getName() + "</a></li>");
						}
						writer.write("</ul>");
					}
					writer.write("<li/>");
				}
			}
			writer.write("<li><a href=\"#\">My Account</a></li>");
			writer.write("</ul>");
		} catch (Exception e) {
			try {
				writer.write(e.getMessage());
			} catch (IOException e1) {
			}
		}
	}

}
