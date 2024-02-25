package com.itwillbs.domain;

import java.sql.Timestamp;

public class MemberDTO {
	private String id;
	private String pass;
	private String nick;
	private String name;
	private int gender;
	private String birth;
	private String phone;
	private String address;
	private String email;
	private int point;
	private String businessNum;
	private String mailOrderNum;
	private String image;
	private Timestamp join;
	private int type;
	private int status;
	private int num;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pass=" + pass + ", nick=" + nick + ", name=" + name + ", gender=" + gender
				+ ", birth=" + birth + ", phone=" + phone + ", address=" + address + ", email=" + email + ", point="
				+ point + ", businessNum=" + businessNum + ", mailOrderNum=" + mailOrderNum + ", image=" + image
				+ ", join=" + join + ", type=" + type + ", status=" + status + ", num=" + num + "]";
	}
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
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
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
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	
}
