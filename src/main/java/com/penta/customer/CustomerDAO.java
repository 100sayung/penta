package com.penta.customer;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.penta.customer.CustomerVO;
import com.google.gson.JsonElement;


public interface CustomerDAO {
	
	public List<CustomerInfoVO> getCustomerInfo(String id);

	public void registCustomer(CustomerVO cvo);
	public void registCustomerInfo(CustomerInfoVO civo);

	public List<CustomerVO> getCustomerListFromPId(String pId);

	@Delete("delete from customerinfo where C_Index = #{idx}")
	public void deleteCustomerinfo(int idx);

	@Delete("delete from customer where C_Index = #{idx}")
	public void deleteCustomer(int idx);

	public void updateCustomer(CustomerVO cvo);
	public void updateCustomerInfo (CustomerVO cvo);

	@Select("select * from customer")
	public List<CustomerVO> getCustomerList();
}