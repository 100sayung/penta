package com.penta.customer;

import lombok.Data;

@Data
public class CustomerInfoVO {

	private String cId;
	private String pVersion;
	private String pName;
	private String ciHWOS;
	private String ciSystem;
	private String ciCheck;
	private String ciMonthly;
	private String ciDegree;
	private String ciMemo;
	private String pId;
	private int ciIndex;
	

	private int cIndex;
	private String cName;
	private String cAddr;
	private String cSales;
	private String pentauser;
}
