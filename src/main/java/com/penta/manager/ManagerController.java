package com.penta.manager;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	
	@Autowired
	ManagerDAO dao;

	@RequestMapping(value="delete_manager.do", method=RequestMethod.GET)
    public String delete(int cidx, HttpServletRequest req) throws Exception {
		
		dao.deleteDB(cidx);
        return "redirect:manager_list.do";
    }	
	
	
	@RequestMapping(value="manager_edit.do", method=RequestMethod.GET)
    public String getVo(int cidx, HttpServletRequest req) {
		
		ManagerVO vo = dao.getDBById(cidx);
		req.setAttribute("mVO", vo);
        return "manager/manager_edit_form";
    }

	@RequestMapping(value="edit_manager.do", method=RequestMethod.POST)
	public String edit(ManagerVO vo) throws Exception {
		dao.updateDB(vo);
	
		return "redirect:manager_list.do";
	}
	
	@RequestMapping("manager_list.do")
	public String getList(HttpServletRequest req) throws Exception {
		//DB
		List<ManagerVO> list = dao.getDBList();
		req.setAttribute("list", list);
		return "manager/manager_list";
	}
	
	@RequestMapping("manager_form.do")
	public String getForm() {
		return "manager/manager_form";
	}
	
	@RequestMapping("register_manager.do")
	public String register(ManagerVO vo) throws Exception {
	
		//1. 
		System.out.println(vo);
		//2. 
		dao.insertDB(vo);
		//3.
		return "redirect:manager_list.do";
	}
}