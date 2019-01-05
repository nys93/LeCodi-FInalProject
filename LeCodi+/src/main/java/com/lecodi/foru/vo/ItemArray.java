package com.lecodi.foru.vo;

import java.util.List;

import com.google.gson.annotations.SerializedName;

public class ItemArray {
	
	@SerializedName("src")
	private String src;
	
	@SerializedName("height")
	private String height;
	
	@SerializedName("width")
	private String width;
	
	@SerializedName("top")
	private String top;
	
	@SerializedName("leftitem")
	private String leftitem;
	
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

	public String getLeftItem() {
		return leftitem;
	}

	public void setLeftItem(String leftitem) {
		this.leftitem = leftitem;
	}
	
	public ItemArray(String src, String height, String width, String top, String leftitem) {
		super();
		this.src = src;
		this.height = height;
		this.width = width;
		this.top = top;
		this.leftitem = leftitem;
		
	}

	public ItemArray() {
		super();
	}

	@Override
	public String toString() {
		return "ItemArray [src=" + src + ", height=" + height + ", width=" + width + ", top=" + top + ", leftItem="
				+ leftitem + "]";
	}

	
	
	

}
