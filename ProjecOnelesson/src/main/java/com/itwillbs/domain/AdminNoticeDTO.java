package com.itwillbs.domain;

import java.sql.Timestamp;

public class AdminNoticeDTO {
	
	private int num;
	private String id;
	private int type;
	private String subject;
	private String content;
	private Timestamp date;
	private int readcount;
	private String image;
	private String oldfile;
	
	@Override
	public String toString() {
		return "AdminNoticeDTO [num=" + num + ", id=" + id + ", type=" + type + ", subject=" + subject + ", content="
				+ content + ", date=" + date + ", readcount=" + readcount + ", image=" + image + ", oldfile=" + oldfile
				+ "]";
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getOldfile() {
		return oldfile;
	}

	public void setOldfile(String oldfile) {
		this.oldfile = oldfile;
	}
	
	
}
