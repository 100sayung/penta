package com.penta.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;


@RequestMapping("/product/rest")
@RestController
public class ProductRestConrtoller {

	@Autowired
	ProductDAO pdao;
	
	@RequestMapping("/get-productinfo")
	public String getProductInfo() throws Exception{
		return new Gson().toJson(pdao.getProductDistinct());
	}
	
	@RequestMapping("/get-productversion")
	public String getProductVersion(String pName) throws Exception{
		return new Gson().toJson(pdao.getProductVersion(pName));
	}
	
}
