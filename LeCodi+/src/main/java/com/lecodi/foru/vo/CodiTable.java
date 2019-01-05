package com.lecodi.foru.vo;


public class CodiTable {
	
	private String src;
	private String height;
	private String width;
	private String top;
	private String leftitem;
	private String userid;
	private int codiname;

	public CodiTable() {
		super();
	}

	public CodiTable(String src, String height, String width, String top, String leftitem, String userid,
			int codiname) {
		super();
		this.src = src;
		this.height = height;
		this.width = width;
		this.top = top;
		this.leftitem = leftitem;
		this.userid = userid;
		this.codiname = codiname;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getWidth() {
		return width;
	}

	public void setWidth(String width) {
		this.width = width;
	}

	public String getTop() {
		return top;
	}

	public void setTop(String top) {
		this.top = top;
	}

	public String getLeftitem() {
		return leftitem;
	}

	public void setLeftitem(String leftitem) {
		this.leftitem = leftitem;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getCodiname() {
		return codiname;
	}

	public void setCodiname(int codiname) {
		this.codiname = codiname;
	}

	@Override
	public String toString() {
		return "CodiTable [src=" + src + ", height=" + height + ", width=" + width + ", top=" + top + ", leftitem="
				+ leftitem + ", userid=" + userid + ", codiname=" + codiname + "]";
	}
	
	
	


	
	

}
