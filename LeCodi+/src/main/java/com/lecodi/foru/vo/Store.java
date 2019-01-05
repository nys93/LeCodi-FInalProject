package com.lecodi.foru.vo;

public class Store { 			//창고(오프라인)
	
	private int storecode;		//창고 코드
	private String location;	//위치
	private String phonenumber;	//오프라인 전화번호
	
	public Store() {
	}

	public Store(int storecode, String location, String phonenumber) {
		this.storecode = storecode;
		this.location = location;
		this.phonenumber = phonenumber;
	}

	public int getStorecode() {
		return storecode;
	}

	public void setStorecode(int storecode) {
		this.storecode = storecode;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	@Override
	public String toString() {
		return "Store [storecode=" + storecode + ", location=" + location + ", phonenumber=" + phonenumber + "]";
	}

}
