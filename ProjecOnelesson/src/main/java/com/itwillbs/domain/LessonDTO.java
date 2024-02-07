package com.itwillbs.domain;

import java.sql.Timestamp;
import java.time.LocalDate;

import com.mysql.cj.jdbc.Blob;

public class LessonDTO {
	private String subject;
	private Blob content;
	private Blob preview;
	private LocalDate date;
	private int price;
	private String location;
	private Timestamp update;
	private String subCategory;
	
	@Override
	public String toString() {
		return subject + content + preview + date + price + location + update + subCategory;
	}
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public Blob getContent() {
		return content;
	}
	public void setContent(Blob content) {
		this.content = content;
	}
	public Blob getPreview() {
		return preview;
	}
	public void setPreview(Blob preview) {
		this.preview = preview;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
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
