package com.penta.penta;

public class PentaVO {
    int pIndex;
    String pId;
    String pName;
    String pRank;
    String pHp;
    String pEmail;
    String pAddr;
    String pType;
    String pStatus;
    String pMemo;

    public int getPIndex() {
        return this.pIndex;
    }

    public void setPIndex(int pIndex) {
        this.pIndex = pIndex;
    }

    public String getPId() {
        return this.pId;
    }

    public void setPId(String pId) {
        this.pId = pId;
    }

    public String getPName() {
        return this.pName;
    }

    public void setPName(String pName) {
        this.pName = pName;
    }

    public String getPRank() {
        return this.pRank;
    }

    public void setPRank(String pRank) {
        this.pRank = pRank;
    }

    public String getPHp() {
        return this.pHp;
    }

    public void setPHp(String pHp) {
        this.pHp = pHp;
    }

    public String getPEmail() {
        return this.pEmail;
    }

    public void setPEmail(String pEmail) {
        this.pEmail = pEmail;
    }

    public String getPAddr() {
        return this.pAddr;
    }

    public void setPAddr(String pAddr) {
        this.pAddr = pAddr;
    }

    public String getPType() {
        return this.pType;
    }

    public void setPType(String pType) {
        this.pType = pType;
    }

    public String getPStatus() {
        return this.pStatus;
    }

    public void setPStatus(String pStatus) {
        this.pStatus = pStatus;
    }

    public String getPMemo() {
		return this.pMemo;
	}

    public void setPMemo(String pMemo ) {
		this.pMemo = pMemo ;
	}
    
    @Override
	public String toString() {
		return "PentaVO [pIndex=" + pIndex + 
        ", pId=" + pId + 
        ", pName=" + pName + 
        ", pRank=" + pRank + 
        ", pHp=" + pHp + 
        ", pEmail=" + pEmail + 
        ", pAddr=" + pAddr + 
        ", pType=" + pType + 
        ", pStatus=" + pStatus + 
        ", pMemo=" + pMemo + "]";
	}
  
}
