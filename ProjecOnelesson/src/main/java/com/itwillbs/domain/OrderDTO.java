package com.itwillbs.domain;

import java.sql.Timestamp;

public class OrderDTO {
	
	
	private int ORDER_NUM;
	private String ORDER_METHOD;
	private Timestamp ORDER_DATE;
	private String ORDER_STATUS;
	private String MEM_ID;
	private String MEM_NAME;
	private String LES_SUBJECT;
	private String LES_PRICE;
	private String LES_NUM;
	
	public String getLES_NUM() {
		return LES_NUM;
	}
	public void setLES_NUM(String lES_NUM) {
		LES_NUM = lES_NUM;
	}
	@Override
	public String toString() {
		return "OrderDTO [ORDER_NUM=" + ORDER_NUM + ", ORDER_METHOD=" + ORDER_METHOD + ", ORDER_DATE=" + ORDER_DATE
				+ ", ORDER_STATUS=" + ORDER_STATUS + ", MEM_ID=" + MEM_ID + ", MEM_NAME=" + MEM_NAME + ", LES_SUBJECT="
				+ LES_SUBJECT + ", LES_PRICE=" + LES_PRICE + ", LES_NUM=" + LES_NUM + "]";
	}
	public String getMEM_ID() {
		return MEM_ID;
	}
	public void setMEM_ID(String mEM_ID) {
		MEM_ID = mEM_ID;
	}
	public String getMEM_NAME() {
		return MEM_NAME;
	}
	public void setMEM_NAME(String mEM_NAME) {
		MEM_NAME = mEM_NAME;
	}
	public String getLES_SUBJECT() {
		return LES_SUBJECT;
	}
	public void setLES_SUBJECT(String lES_SUBJECT) {
		LES_SUBJECT = lES_SUBJECT;
	}
	public String getLES_PRICE() {
		return LES_PRICE;
	}
	public void setLES_PRICE(String lES_PRICE) {
		LES_PRICE = lES_PRICE;
	}
	public int getORDER_NUM() {
		return ORDER_NUM;
	}
	public void setORDER_NUM(int oRDER_NUM) {
		ORDER_NUM = oRDER_NUM;
	}
	public String getORDER_METHOD() {
		return ORDER_METHOD;
	}
	public void setORDER_METHOD(String oRDER_METHOD) {
		ORDER_METHOD = oRDER_METHOD;
	}
	public Timestamp getORDER_DATE() {
		return ORDER_DATE;
	}
	public void setORDER_DATE(Timestamp oRDER_DATE) {
		ORDER_DATE = oRDER_DATE;
	}
	public String getORDER_STATUS() {
		return ORDER_STATUS;
	}
	public void setORDER_STATUS(String oRDER_STATUS) {
		ORDER_STATUS = oRDER_STATUS;
	}
	
}
