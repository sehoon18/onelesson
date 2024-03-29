package com.itwillbs.domain;

import java.sql.Timestamp;


public class LessonDTO {
	private int num;
	private String subject;
	private String content;
	private String preview;
	private String detail;
	private String date;
	private int price;
	private String location;
	private Timestamp update;
	private String subCategory;
	private String category;
	private int status;
	private String id;
	private String method;
	private String keyword;	
	private String field;	
	
	@Override
	public String toString() {
		return "LessonDTO [num=" + num + ", subject=" + subject + ", content=" + content + ", preview=" + preview
				+ ", detail=" + detail + ", date=" + date + ", price=" + price + ", location=" + location + ", update="
				+ update + ", subCategory=" + subCategory + ", category=" + category + ", status=" + status + ", id="
				+ id + ", method=" + method + ", keyword=" + keyword + ", field=" + field + "]";
	}

	public LessonDTO() {}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	public String getPreview() {
		return preview;
	}
	public void setPreview(String preview) {
		this.preview = preview;
	}
	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Timestamp getUpdate() {
		return update;
	}
	public void setUpdate(Timestamp update) {
		this.update = update;
	}
	public String getSubCategory() {
		return subCategory;
	}
	public void setSubCategory(String subCategory) {
		this.subCategory = subCategory;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	
}
