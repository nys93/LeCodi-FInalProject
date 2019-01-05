package com.lecodi.foru.vo;

public class Shipment { 				//배송
	
	private int shippingnumber;			//배송번호
	private int shippingamount;			//배송수량
	private String shippingdate;		//배송날짜
	private String shippingaddress;		//배송주소
	private String shippingPHnumber;	//배송지 전화번호
	
	public Shipment() {
	}

	public Shipment(int shippingnumber, int shippingamount, String shippingdate, String shippingaddress,
			String shippingPHnumber) {
		this.shippingnumber = shippingnumber;
		this.shippingamount = shippingamount;
		this.shippingdate = shippingdate;
		this.shippingaddress = shippingaddress;
		this.shippingPHnumber = shippingPHnumber;
	}

	public int getShippingnumber() {
		return shippingnumber;
	}

	public void setShippingnumber(int shippingnumber) {
		this.shippingnumber = shippingnumber;
	}

	public int getShippingamount() {
		return shippingamount;
	}

	public void setShippingamount(int shippingamount) {
		this.shippingamount = shippingamount;
	}

	public String getShippingdate() {
		return shippingdate;
	}

	public void setShippingdate(String shippingdate) {
		this.shippingdate = shippingdate;
	}

	public String getShippingaddress() {
		return shippingaddress;
	}

	public void setShippingaddress(String shippingaddress) {
		this.shippingaddress = shippingaddress;
	}

	public String getShippingPHnumber() {
		return shippingPHnumber;
	}

	public void setShippingPHnumber(String shippingPHnumber) {
		this.shippingPHnumber = shippingPHnumber;
	}

	@Override
	public String toString() {
		return "shipment [shippingnumber=" + shippingnumber + ", shippingamount=" + shippingamount + ", shippingdate="
				+ shippingdate + ", shippingaddress=" + shippingaddress + ", shippingPHnumber=" + shippingPHnumber
				+ "]";
	}

}
