package com.HMS.POJO;

public class Staters {
	
	private String staterName;
	private String staterType;
	private String staterPrice;
	
	public String getStaterName() {
		return staterName;
	}
	public void setStaterName(String staterName) {
		this.staterName = staterName;
	}
	public String getStaterType() {
		return staterType;
	}
	public void setStaterType(String staterType) {
		this.staterType = staterType;
	}
	public String getStaterPrice() {
		return staterPrice;
	}
	public void setStaterPrice(String staterPrice) {
		this.staterPrice = staterPrice;
	}
	@Override
	public String toString() {
		System.out.println("Staters [staterName=" + staterName + ", staterType="
				+ staterType + ", staterPrice=" + staterPrice + "]");
		return "Staters [staterName=" + staterName + ", staterType="
				+ staterType + ", staterPrice=" + staterPrice + "]";
	}
	
	

}
