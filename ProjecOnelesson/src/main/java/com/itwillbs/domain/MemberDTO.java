package com.itwillbs.domain;

import java.sql.Timestamp;
import java.time.LocalDate;

import com.mysql.cj.jdbc.Blob;

public class MemberDTO {
	private String id;
	private String pass;
	private String name;
	private LocalDate birth;
	private int phone;
	private String address;
	private String email;
	private int gender;
	private int point;
	private String businessNum;
	private String mailOrderNum;
	private Blob image;
	private Timestamp join;
	private int type;
	private int status;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public LocalDate getBirth() {
		return birth;
	}
	public void setBirth(LocalDate birth) {
		this.birth = birth;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getBusinessNum() {
		return businessNum;
	}
	public void setBusinessNum(String businessNum) {
		this.businessNum = businessNum;
	}
	public String getMailOrderNum() {
		return mailOrderNum;
	}
	public void setMailOrderNum(String mailOrderNum) {
		this.mailOrderNum = mailOrderNum;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public Timestamp getJoin() {
		return join;
	}
	public void setJoin(Timestamp join) {
		this.join = join;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
