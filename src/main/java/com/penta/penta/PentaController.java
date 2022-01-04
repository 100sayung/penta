package com.penta.penta;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/penta")
public class PentaController {

    @Autowired
	PentaDAO dao;

    @RequestMapping(value="delete_penta.do", method=RequestMethod.GET)
    public String delete(int pIndex, HttpServletRequest req) throws Exception {
		
		dao.deleteDB(pIndex);
        return "redirect:penta_list.do";
    }		
	
	@RequestMapping(value="penta_edit.do", method=RequestMethod.GET)
    public String getVo(int pIndex, HttpServletRequest req) {
		
		PentaVO cvo = dao.getDBById(pIndex);
		req.setAttribute("cvo", cvo);
        return "penta/penta_edit_form";
    }

	@RequestMapping(value="edit_penta.do", method=RequestMethod.POST)
	public String edit(PentaVO cvo) throws Exception {	
		dao.updateDB(cvo);
		return "redirect:penta_list.do";
	}

    @RequestMapping("/penta_list.do")
	public String getList(HttpServletRequest req) throws Exception {
		//DB
		List<PentaVO> list = dao.getDBList();
		req.setAttribute("list", list);
		return "penta/penta_list";
	}
    
	@RequestMapping("penta_form.do")
	public String getForm() {
		return "penta/penta_form";
	}
	
	@RequestMapping("register_penta.do")
	public String register(PentaVO cvo, PentaVO pentaVO) throws Exception {
	
		//1. 
		System.out.println(cvo);
		//2. 
		dao.insertDB(pentaVO);
		//3.
		return "redirect:penta_list.do";
	}
	
}
