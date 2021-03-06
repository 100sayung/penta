package com.penta.customer;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.penta.customer.CustomerVO;
import com.penta.penta.PentaVO;
import com.google.gson.JsonElement;


public interface CustomerDAO {
	
	public List<CustomerInfoVO> getCustomerInfoFromCId(String cId);

	public void registCustomer(CustomerVO cvo);
	public void registCustomerInfo(CustomerInfoVO civo);

	public List<CustomerVO> getCustomerListFromPId(String pId);

	@Delete("delete from customerinfo where C_Index = #{idx}")
	public void deleteCustomerinfo(int idx);

	@Delete("delete from customer where C_Index = #{idx}")
	public void deleteCustomer(int idx);

	public void updateCustomer(CustomerVO cvo);
	public void updateCustomerInfo(CustomerInfoVO civo);

	@Select("select * from customer")
	public List<CustomerVO> getCustomerList();
	
	@Select("select * from customer where C_ID = #{cId}")
	public CustomerVO getCustomer(String cId);

	public List<CustomerInfoVO> getCustomerInfoFromCiIndex(int ciIndex);

	public List<PentaVO> getPUser();

}