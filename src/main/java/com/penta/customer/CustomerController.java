package com.penta.customer;

import javax.servlet.http.HttpServletRequest;

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
	
	//리스트 페이지로 이동
	@GetMapping("/customer_list.do")
	public ModelAndView moveCustomList() {
		mav.addObject("customer", cService.getCustomerListFromPId("ndh1123"));//후에 세션값 받아서 해당 인원만 가져올 예정
		mav.setViewName("customer/customer_list");
		return mav;
	}
	
	
	//등록 페이지로 이동
	@GetMapping("/customer_regist.do")
	public String moveCustomerRegist() {
		return "customer/customer_form";
	}
	
	
	@RequestMapping("/regist-customer")
	public ModelAndView registCustomer(CustomerVO cvo) {
		System.out.println(cvo);
		cService.registCustomer(cvo);
		System.out.println(cvo.getCName());
		mav.setViewName("customer/customer_regist");
		return mav;
	}
	
	@RequestMapping("/customer_info.do")
	public ModelAndView moveCustomerInfo(int cIndex) {
		
		mav.addObject("customerInfo", cService.getCustomerInfo(cIndex));
		mav.setViewName("customer/customer_info");
		return mav;
	}

	@GetMapping("/customer_update.do")
	public ModelAndView moveCustomerUpdate(int cIndex) {
		
		mav.addObject("c", cService.getCustomerInfo(cIndex));
		mav.setViewName("customer/customer_edit_form");
		return mav;
	}
	
	@RequestMapping("/update-customer")
	public String updateCustomer(CustomerVO cvo) {
		
		cService.updateCustomer(cvo);
		return "redirect:customer_list.do";
	}

}
