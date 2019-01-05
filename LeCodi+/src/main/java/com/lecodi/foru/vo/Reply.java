package com.lecodi.foru.vo;

public class Reply {			//댓글 테이블
	
	private int replynum;		//댓글 번호
	private String userid;		//ID
	private String context;		//댓글 내용
	private String inputdate;	//등록 날짜
	private int boardnum;		//글 번호
	
	public Reply() {
	}

	public Reply(int replynum, String userid, String context, String inputdate, int boardnum) {
		this.replynum = replynum;
		this.userid = userid;
		this.context = context;
		this.inputdate = inputdate;
		this.boardnum = boardnum;
	}

	public int getReplynum() {
		return replynum;
	}

	public void setReplynum(int replynum) {
		this.replynum = replynum;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public int getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

	@Override
	public String toString() {
		return "Reply [replynum=" + replynum + ", userid=" + userid + ", context=" + context + ", inputdate="
				+ inputdate + ", boardnum=" + boardnum + "]";
	}
	
	

}
