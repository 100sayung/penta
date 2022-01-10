package com.penta.service;

public class ServiceVO {
    int sIndex;
    String scId;
    String smId;
    String sprId;
    String speId;
    String sType;
    String sWork;
    String sMemo;
    String sInDate;
    String sInTime;
    String sEndTime;
    String sEndDate;
    int sServTime;
    String sFileName;

    public int getSIndex() {
        return this.sIndex;
    }

    public void setSIndex(int sIndex) {
        this.sIndex = sIndex;
    }

    public String getScId() {
        return this.scId;
    }

    public void setScId(String scId) {
        this.scId = scId;
    }

    public String getSmId() {
        return this.smId;
    }

    public void setSmId(String smId) {
        this.smId = smId;
    }

    public String getSprId() {
        return this.sprId;
    }

    public void setSprId(String sprId) {
        this.sprId = sprId;
    }

    public String getSpeId() {
        return this.speId;
    }

    public void setSpeId(String speId) {
        this.speId = speId;
    }

    public String getSType() {
        return this.sType;
    }

    public void setSType(String sType) {
        this.sType = sType;
    }

    public String getSWork() {
        return this.sWork;
    }

    public void setSWork(String sWork) {
        this.sWork = sWork;
    }

    public String getSMemo() {
        return this.sMemo;
    }

    public void setSMemo(String sMemo) {
        this.sMemo = sMemo;
    }

    public String getSInDate() {
        return this.sInDate;
    }

    public void setSInDate(String sInDate) {
        this.sInDate = sInDate;
    }

    public String getSInTime() {
        return this.sInTime;
    }

    public void setSInTime(String sInTime) {
        this.sInTime = sInTime;
    }

    public String getSEndTime() {
        return this.sEndTime;
    }

    public void setSEndTime(String sEndTime) {
        this.sEndTime = sEndTime;
    }

    public String getSEndDate() {
        return this.sEndDate;
    }

    public void setSEndDate(String sEndDate) {
        this.sEndDate = sEndDate;
    }

    public int getSServTime() {
        return this.sServTime;
    }

    public void setSServTime(int sServTime) {
        this.sServTime = sServTime;
    }

    public String getSFileName() {
        return this.sFileName;
    }

    public void setSFileName(String sFileName) {
        this.sFileName = sFileName;
    }

    
	@Override
	public String toString() {
		return "ServiceVO [sIndex=" + sIndex + 
        ", scId=" + scId + 
        ", smId=" + smId + 
        ", sprId=" + sprId +
        ", speId=" + speId +
        ", sType=" + sType +
        ", sWork=" + sWork +
        ", sMemo=" + sMemo +
        ", sInDate=" + sInDate +
        ", sInTime=" + sInTime +
        ", sEndTime=" + sEndTime +
        ", sEndDate=" + sEndDate +
        ", sServTime=" + sServTime +
        ", sFileNmae=" + sFileName +
         "]";
	}
}
