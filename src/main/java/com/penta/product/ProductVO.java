package com.penta.product;

public class ProductVO {

	int pIndex;
	String pVendor;
	String pName;
	String pVersion;
	
	
	public int getpIndex() {
		return pIndex;
	}
	public void setpIndex(int pIndex) {
		this.pIndex = pIndex;
	}
	public String getpVendor() {
		return pVendor;
	}
	public void setpVendor(String pVendor) {
		this.pVendor = pVendor;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpVersion() {
		return pVersion;
	}
	public void setpVersion(String pVersion) {
		this.pVersion = pVersion;
	}
	
	@Override
	public String toString() {
		return "ProductVO [pIndex=" + pIndex + ", pVendor=" + pVendor + ", pName=" + pName + ", pVersion=" + pVersion
				+ "]";
	}
	
	
	
	
}

