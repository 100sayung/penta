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
	public ModelAndView moveCustomList() throws Exception {
//		mav.addObject("customer", cService.getCustomerListFromPId("ndh1123"));//후에 세션값 받아서 해당 인원만 가져올 예정
		mav.addObject("engineer", cService.getPentaUserList());
		mav.setViewName("customer/customer_list");
		return mav;
	}
	
	
	//등록 페이지로 이동
	@GetMapping("/customer_regist.do")
	public String moveCustomerRegist() {
		return "customer/customer_form";
	}
	
	@GetMapping("/customer_info_regist.do")
	public String moveCustomerInfoRegist() {
		return "customer/customer_info_form";
	}
	
	@GetMapping("/customer_info_list.do")
	public ModelAndView moveCustomerInfoList(String cId) {
		mav.addObject("customerInfo", cService.getCustomerInfoFromCId(cId));
		mav.setViewName("customer/customer_info_list");
		return mav;
	}
	
	@RequestMapping("/regist-customer")
	public String registCustomer(CustomerVO cvo) {
		cService.registCustomer(cvo);
//		mav.setViewName("customer/customer_list");
		return "redirect:customer_list.do";
	}
	
	@RequestMapping("/regist-customer-info")
	public String registCustomerInfo(CustomerInfoVO civo) {
		cService.registCustomerInfo(civo);
		return "redirect:customer_list.do";
	}
	
	@RequestMapping("/customer_info.do")
	public ModelAndView moveCustomerInfo(String ciIndex) {
		mav.addObject("customerInfo", cService.getCustomerInfoFromCiIndex(ciIndex));
		mav.setViewName("customer/customer_info");
		System.out.println(ciIndex);
		return mav;
	}

	@GetMapping("/customer_update.do")
	public ModelAndView moveCustomerUpdate(String cId) {
		mav.addObject("c", cService.getCustomer(cId));
		mav.setViewName("customer/customer_edit_form");
		return mav;
	}
	
	@GetMapping("/customer_info_update.do")
	public ModelAndView moveCustomerInfoUpdate(String ciIndex) {
		mav.addObject("ci", cService.getCustomerInfoFromCiIndex(ciIndex));
		mav.setViewName("customer/customer_info_edit_form");
		return mav;
	}
	
	@RequestMapping("/update-customer")
	public String updateCustomer(CustomerVO cvo) {
		
		cService.updateCustomer(cvo);
		return "redirect:customer_list.do";
	}
	
	@RequestMapping("/update-customer-info")
	public String updateCustomerInfo(CustomerInfoVO civo) {
		
		cService.updateCustomerInfo(civo);
		return "redirect:customer_info_list.do";
	}

}
