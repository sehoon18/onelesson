package com.itwillbs.domain;

public class AdminFaqDTO {
	
	private int num;
	private String id;
	private String subject;
	private String content;
	
	@Override
	public String toString() {
		return "AdminFaqDTO [num=" + num + ", id=" + id + ", subject=" + subject + ", content=" + content + "]";
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
	
}
