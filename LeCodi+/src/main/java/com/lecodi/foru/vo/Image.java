package com.lecodi.foru.vo;

import java.util.Arrays;

public class Image {
	private int id;
	private String userid;
	private Byte[] imgFile;
	private String cloth_category;
	/*private String imgFile2;*/
	
	
	public Image(int id, String userid, String imgFile2) {
		this.id = id;
		this.userid = userid;
		/*this.imgFile2 = imgFile2;*/
	}

/*	public String getImgFile2() {
		return imgFile2;
	}*/

	/*public void setImgFile2(String imgFile2) {
		this.imgFile2 = imgFile2;
	}*/

	public Image() {
	}
	
	public Image(int id, String userid, Byte[] imgFile, String cloth_category) {
		this.id = id;
		this.userid = userid;
		this.imgFile = imgFile;
		this.cloth_category = cloth_category;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Byte[] getImgFile() {
		return imgFile;
	}
	public void setImgFile(Byte[] imgFile) {
		this.imgFile = imgFile;
	}

	public String getCloth_category() {
		return cloth_category;
	}

	public void setCloth_category(String cloth_category) {
		this.cloth_category = cloth_category;
	}

	@Override
	public String toString() {
		return "Image [id=" + id + ", userid=" + userid + ", imgFile=" + Arrays.toString(imgFile) + "]";
	}
	
}
