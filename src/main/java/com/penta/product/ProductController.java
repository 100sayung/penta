package com.penta.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	ProductDAO pdao;

	@RequestMapping(value="delete_product.do", method=RequestMethod.GET)
    public String delete(int pidx, HttpServletRequest req) throws Exception {
		
		pdao.deleteDB(pidx);
        return "redirect:product_list.do";
    }	
	
	
	@RequestMapping(value="product_edit.do", method=RequestMethod.GET)
    public String getVo(int pidx, HttpServletRequest req) {
		
		ProductVO pvo = pdao.getDBById(pidx);
		req.setAttribute("pVO", pvo);
        return "product/product_edit_form";
    }

	@RequestMapping(value="edit_product.do", method=RequestMethod.POST)
	public String edit(ProductVO pvo) throws Exception {
		pdao.updateDB(pvo);
	
		return "redirect:product_list.do";
	}
	
	@RequestMapping("product_list.do")
	public String getList(HttpServletRequest req) throws Exception {
		//DB
		List<ProductVO> list = pdao.getDBList();
		req.setAttribute("list", list);
		return "product/product_list";
	}
	
	@RequestMapping("product_form.do")
	public String getForm() {
		return "product/product_form";
	}
	
	@RequestMapping("register_product.do")
	public String register(ProductVO pvo) throws Exception {
	
		//1. 
		System.out.println(pvo);
		//2. 
		pdao.insertDB(pvo);
		//3.
		return "redirect:product_list.do";
	}
}