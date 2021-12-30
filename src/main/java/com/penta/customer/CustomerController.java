package com.penta.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	CustomerService cService;
	
	ModelAndView mav = new ModelAndView();
	
	@GetMapping("/customer_list.do")
	public ModelAndView moveCustomInfo() {
		
		mav.addObject("customertable", cService.getCustomerListFromPId("ndh1123"));//후에 세션값 받아서 해당 인원만 가져올 예정
		mav.setViewName("customer/customer_list");
		
		
		return mav;
	}
	
	
	@GetMapping("/customer_regist.do")
	public String moveCustomerRegist() {
		return "customer/customer_regist";
	}
	
	@RequestMapping("/regist-customer")
	public ModelAndView registCustomer(CustomerVO cvo) {
		System.out.println(cvo);
		cService.registCustomer(cvo);
		System.out.println(cvo.getCName());
		mav.setViewName("customer/customer_regist");
		return mav;
	}
}
