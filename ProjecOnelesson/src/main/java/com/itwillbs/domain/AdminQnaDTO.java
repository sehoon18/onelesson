package com.itwillbs.domain;

import java.sql.Timestamp;

public class AdminQnaDTO {
	
	private int num;
	private String mId;
	private String subject; //글 제목
	private String question; //문의/신고 내용
	private String answer; //문의/신고 답변
	private Timestamp update; //문의/신고 답변일
	
	@Override
	public String toString() {
		return "AdminQnaDTO [num=" + num + ", mId=" + mId + ", subject=" + subject + ", question=" + question
				+ ", answer=" + answer + ", update=" + update + "]";
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
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

	public Timestamp getUpdate() {
		return update;
	}

	public void setUpdate(Timestamp update) {
		this.update = update;
	}
	
}
