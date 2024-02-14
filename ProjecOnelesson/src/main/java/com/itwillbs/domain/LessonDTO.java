package com.itwillbs.domain;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class LessonDTO {
	private String subject;
	private String content;
	private MultipartFile preview;
	private String date;
	private int price;
	private String location;
	private Timestamp update;
	private String subCategory;
	private int status;
	
		
	@Override
	public String toString() {
		return "LessonDTO [subject=" + subject + ", content=" + content + ", preview=" + preview + ", date=" + date
				+ ", price=" + price + ", location=" + location + ", update=" + update + ", subCategory=" + subCategory
				+ ", status=" + status + "]";
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
	public MultipartFile getPreview() {
		return preview;
	}
	public void setPreview(MultipartFile preview) {
		this.preview = preview;
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
	
	
}
