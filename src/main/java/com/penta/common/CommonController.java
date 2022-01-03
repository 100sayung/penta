package com.penta.common;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/common")
public class CommonController {

    @Autowired
	CommonDAO dao;

    @RequestMapping(value="delete_common.do", method=RequestMethod.GET)
    public String delete(int cidx, HttpServletRequest req) throws Exception {
		
		dao.deleteDB(cidx);
        return "redirect:common_list.do";
    }		
	
	@RequestMapping(value="common_edit.do", method=RequestMethod.GET)
    public String getVo(int cidx, HttpServletRequest req) {
		
		CommonVO cvo = dao.getDBById(cidx);
		req.setAttribute("cvo", cvo);
        return "common/common_edit_form";
    }

	@RequestMapping(value="edit_common.do", method=RequestMethod.POST)
	public String edit(CommonVO cvo) throws Exception {
		//System.out.println(vo.getcComid());
		dao.updateDB(cvo);
		return "redirect:common_list.do";
	}

    @RequestMapping("/common_list.do")
	public String getList(HttpServletRequest req) throws Exception {
		//DB
		List<CommonVO> list = dao.getDBList();
		req.setAttribute("list", list);
		return "common/common_list";
	}
    
	@RequestMapping("common_form.do")
	public String getForm() {
		return "common/common_form";
	}
	
	@RequestMapping("register_common.do")
	public String register(CommonVO cvo, CommonVO commonVO) throws Exception {
	
		//1. 
		System.out.println(cvo);
		//2. 
		dao.insertDB(commonVO);
		//3.
		return "redirect:common_list.do";
	}

	@RequestMapping("/37Project.do")
	public String Project37() {

		return "common/37Project";
	}

	
}
