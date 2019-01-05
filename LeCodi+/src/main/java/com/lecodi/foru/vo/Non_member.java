package com.lecodi.foru.vo;

public class Non_member {		//비회원
	
	private String phonenumber;	//핸드폰 번호
	private int orderpw;		//주민 비밀번호
	private String address;		//주소
	private String postcode;	//우편번호
	
	public Non_member() {
	}

	public Non_member(String phonenumber, int orderpw, String address, String postcode) {
		this.phonenumber = phonenumber;
		this.orderpw = orderpw;
		this.address = address;
		this.postcode = postcode;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public int getOrderpw() {
		return orderpw;
	}

	public void setOrderpw(int orderpw) {
		this.orderpw = orderpw;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	@Override
	public String toString() {
		return "Non_member [phonenumber=" + phonenumber + ", orderpw=" + orderpw + ", address=" + address
				+ ", postcode=" + postcode + "]";
	}
	
	

}
