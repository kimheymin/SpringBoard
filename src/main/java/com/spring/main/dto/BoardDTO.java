package com.spring.main.dto;

import oracle.sql.DATE;

public class BoardDTO {

	private int boardIdx;
	private String id;
	private String subject;
	private String content;
	private DATE reg_date;
	private int bHit;
	
	public int getBoardIdx() {
		return boardIdx;
	}
	public void setBoardIdx(int boardIdx) {
		this.boardIdx = boardIdx;
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
	public DATE getReg_date() {
		return reg_date;
	}
	public void setReg_date(DATE reg_date) {
		this.reg_date = reg_date;
	}
	public int getbHit() {
		return bHit;
	}
	public void setbHit(int bHit) {
		this.bHit = bHit;
	}
	
}
