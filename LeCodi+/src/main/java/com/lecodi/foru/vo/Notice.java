package com.lecodi.foru.vo;

public class Notice {			//공지
	
	private int boardnum;		//글 번호
	private String title;		//글 제목
	private String context;		//글 내용
	private String userid;		//ID
	private String inputdate;	//등록 날짜
	
	public Notice() {
	}

	public Notice(int boardnum, String title, String context, String userid, String inputdate) {
		this.boardnum = boardnum;
		this.title = title;
		this.context = context;
		this.userid = userid;
		this.inputdate = inputdate;
	}

	public int getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	@Override
	public String toString() {
		return "Notice [boardnum=" + boardnum + ", title=" + title + ", context=" + context + ", userid=" + userid
				+ ", inputdate=" + inputdate + "]";
	}
	
	

}
