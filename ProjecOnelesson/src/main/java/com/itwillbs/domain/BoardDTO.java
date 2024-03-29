package com.itwillbs.domain;

import java.sql.Timestamp;

public class BoardDTO {

	private int num;
	private String name;
	private int type;
	private String subject; //글 제목
	private String content; //글 내용
	private String question; //문의/신고 내용
	private String answer; //문의/신고 답변
	private Timestamp date; //작성일
	private Timestamp update; //문의/신고 답변일
	private int readcount;
	private String image;
	private String preview;
	private int rating;
	private String id;
	
	@Override
	public String toString() {
		return "BoardDTO [num=" + num + ", name=" + name + ", type=" + type + ", subject=" + subject + ", content="
				+ content + ", question=" + question + ", answer=" + answer + ", date=" + date + ", update=" + update
				+ ", readcount=" + readcount + ", image=" + image + ", id=" + id + "]";
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

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public Timestamp getUpdate() {
		return update;
	}

	public void setUpdate(Timestamp update) {
		this.update = update;
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

	public String getPreview() {
		return preview;
	}

	public void setPreview(String preview) {
		this.preview = preview;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
}
