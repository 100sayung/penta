package com.penta.customer;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.penta.customer.CustomerDAO;
import com.penta.penta.PentaDAO;
import com.penta.penta.PentaVO;

@Service
public class CustomerService {

	@Autowired
	CustomerDAO cDao;
	@Autowired
	PentaDAO pDao;
	
	public String getCustomInfoBasic() {
		
		StringBuilder sb = new StringBuilder();
		return sb.toString();
	}
	
	
	private StringBuilder makeTable(ArrayList<CustomerVO> cVOList) {
		StringBuilder sb = new StringBuilder();
		sb.append("<table class='table table-striped'><tr><td>고객사 이름</td><td>고객사 주소</td><td>담당 영업</td><td>비고</td></tr>");
		for(CustomerVO c : cVOList) {
			sb.append("<tr><td>"+c.getCName()+"</td><td>"+c.getCAddr()+"</td><td>"+c.getCSales()+"</td>");
			sb.append("<td><button type='button' class='click btn btn-info' id='"+c.getCIndex()+"'>더 보기</button></td>");
		}
		sb.append("</table>");
		System.out.println(sb.toString());
		return sb;
	}

	@Transactional
	public void registCustomer(CustomerVO cvo) {
		cDao.registCustomer(cvo);
	}
	
	public void registCustomerInfo(CustomerInfoVO civo) {
		cDao.registCustomerInfo(civo);
	}


	public CustomerVO getCustomerInfo(String cId) {
		
		return cDao.getCustomerInfo(cId);
	}


	@Transactional
	public void updateCustomer(CustomerVO cvo) {
		cDao.updateCustomer(cvo);
		cDao.updateCustomerInfo(cvo);
	}



	public List<PentaVO> getPentaUserList() throws Exception {
		
		return pDao.getDBList();
	}
}
