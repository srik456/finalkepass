package com.cogni.smart_shop.service;

import java.util.List;

import com.cogni.smart_shop.bean.ProductBean;

public interface ProductService {
	public boolean addProduct(ProductBean pb);
	public boolean deleteProduct(ProductBean pb,String name);
	public boolean updateProduct(String name,int item);
	public List<ProductBean> getAllProductBean();
	  public List<ProductBean> sortProducts(String query);
	  public List<ProductBean> searchProducts(String name);

}
