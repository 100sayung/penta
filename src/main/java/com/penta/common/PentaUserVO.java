package com.penta.common;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("EmpVO")
public class PentaUserVO {
	private int pIndex;
	private String pId;
	private String pName;
	private String pRank;
	private String pTel;
	private String pType;
}

