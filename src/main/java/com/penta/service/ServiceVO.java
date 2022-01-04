package com.penta.service;

public class ServiceVO {
    int ComIndex;
    String ComId;
    String ComKey;
    String ComValue;

    public int getComIndex() {
        return this.ComIndex;
    }

    public void setComIndex(int ComIndex) {
        this.ComIndex = ComIndex;
    }

    public String getComId() {
        return this.ComId;
    }

    public void setComId(String ComId) {
        this.ComId = ComId;
    }

    public String getComKey() {
        return this.ComKey;
    }

    public void setComKey(String ComKey) {
        this.ComKey = ComKey;
    }

    public String getComValue() {
        return this.ComValue;
    }

    public void setComValue(String ComValue) {
        this.ComValue = ComValue;
    }

	@Override
	public String toString() {
		return "ServiceVO [comIndex=" + ComIndex + ", comId=" + ComId + ", comKey=" + ComKey + ", comValue=" + ComValue + "]";
	}
}
