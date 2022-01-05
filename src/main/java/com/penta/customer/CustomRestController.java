package com.penta.customer;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.penta.customer.CustomerDAO;

@RestController
@RequestMapping("/customer/rest")
public class CustomRestController {

	@Autowired
	private CustomerDAO cDao;
	
	@ResponseBody
	@RequestMapping(value="/get-customerinfo", produces = "application/text; charset=utf8")
	public String getCustomerInfo(String id){
		int idx = Integer.parseInt(id);
		return new Gson().toJson(cDao.getCustomerInfo(id));
	}
	
	@Transactional
	@RequestMapping(value="/delete-customerinfo")
	public void deleteCustomerinfo(String idx_s) {
		int idx = Integer.parseInt(idx_s);
		cDao.deleteCustomerinfo(idx);
		cDao.deleteCustomer(idx);
	}
	
	
	@RequestMapping(value="/get-customerlist-frompid", produces = "application/text; charset=utf8")
	public String getCustomerListFromPId(String pId) {
		System.out.println(pId);
		if(pId.equals("all")) {
			System.out.println("I'm in all");
			return new Gson().toJson(cDao.getCustomerList());
		}
		return new Gson().toJson(cDao.getCustomerListFromPId(pId));
	}
	
}
