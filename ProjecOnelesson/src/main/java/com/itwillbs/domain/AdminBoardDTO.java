package com.itwillbs.domain;

import java.sql.Timestamp;

import com.mysql.cj.jdbc.Blob;

public class AdminBoardDTO {
	
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
	private Blob image;
	
	@Override
	public String toString() {
		return "AdminBoardDTO [num=" + num + ", name=" + name + ", type=" + type + ", subject=" + subject + ", content="
				+ content + ", question=" + question + ", answer=" + answer + ", date=" + date + ", update=" + update
				+ ", readcount=" + readcount + ", image=" + image + "]";
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

	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}
	
}
