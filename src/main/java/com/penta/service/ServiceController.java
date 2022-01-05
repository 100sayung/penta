package com.penta.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.penta.common.CommonVO;
import com.penta.common.CommonDAO;

@Controller
@RequestMapping("/service")
public class ServiceController {

    @Autowired
	ServiceDAO dao;

	@Autowired
	CommonDAO ComDao;

    @RequestMapping(value="delete_service.do", method=RequestMethod.GET)
    public String delete(int cidx, HttpServletRequest req) throws Exception {
		
		dao.deleteDB(cidx);
        return "redirect:service_list.do";
    }		
	
	@RequestMapping(value="service_edit.do", method=RequestMethod.GET)
    public String getVo(int cidx, HttpServletRequest req) {
		
		ServiceVO cvo = dao.getDBById(cidx);
		req.setAttribute("cvo", cvo);
        return "service/service_edit_form";
    }

	@RequestMapping(value="edit_service.do", method=RequestMethod.POST)
	public String edit(ServiceVO cvo) throws Exception {	
		dao.updateDB(cvo);
		return "redirect:service_list.do";
	}

    @RequestMapping("/service_list.do")
	public String getList(HttpServletRequest req) throws Exception {
		//DB

		List<ServiceVO> list = dao.getDBList();
		req.setAttribute("list", list);
		return "service/service_list";
	}
    
	@RequestMapping("service_form.do")
	public String getForm(HttpServletRequest req) throws Exception {

		List<CommonVO> list = ComDao.getDBByComIdList("2000"); // 직급		
		req.setAttribute("pType", list);

		List<CommonVO> list1 = ComDao.getDBByComIdList("2200"); // 지원 타입
		req.setAttribute("sType", list1);

		return "service/service_form";
	}
	
	@RequestMapping("register_service.do")
	public String register(ServiceVO cvo, ServiceVO serviceVO) throws Exception {
	
		//1. 
		System.out.println(cvo);
		//2. 
		dao.insertDB(serviceVO);
		//3.
		return "redirect:service_list.do";
	}

}
