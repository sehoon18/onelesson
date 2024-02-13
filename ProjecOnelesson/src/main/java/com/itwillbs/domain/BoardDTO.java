package com.itwillbs.domain;

import java.sql.Timestamp;

import com.mysql.cj.jdbc.Blob;

public class BoardDTO {

	private int num;
	private String name;
	private int type;
	private String subject;
	private String content;
	private Timestamp date;
	private int readcount;
	private Blob image;
	
	@Override
	public String toString() {
		return "BoardDTO [num=" + num + ", name=" + name + ", type=" + type + ", subject=" + subject + ", content="
				+ content + ", date=" + date + ", radcount=" + readcount + ", image=" + image + "]";
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}

	
}
