package com.lecodi.foru.vo;

public class Nonmem_order {				//비회원 주문
	
	private int ordernumber;			//주문번호
	private String orderdate;			//주문 날짜
	private String phonenumber;			//임시 아이디
	private int shippingnumber;			//배송 번호
	private String shippingaddress	;	//배송 주소
	private String shippingPHnumber;	//배송지 전화번호
	private String extrarequest;		//기타 요구사항
	
	public Nonmem_order() {
	}

	public Nonmem_order(int ordernumber, String orderdate, String phonenumber, int shippingnumber,
			String shippingaddress, String shippingPHnumber, String extrarequest) {
		this.ordernumber = ordernumber;
		this.orderdate = orderdate;
		this.phonenumber = phonenumber;
		this.shippingnumber = shippingnumber;
		this.shippingaddress = shippingaddress;
		this.shippingPHnumber = shippingPHnumber;
		this.extrarequest = extrarequest;
	}

	public int getOrdernumber() {
		return ordernumber;
	}

	public void setOrdernumber(int ordernumber) {
		this.ordernumber = ordernumber;
	}

	public String getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public int getShippingnumber() {
		return shippingnumber;
	}

	public void setShippingnumber(int shippingnumber) {
		this.shippingnumber = shippingnumber;
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

	public String getExtrarequest() {
		return extrarequest;
	}

	public void setExtrarequest(String extrarequest) {
		this.extrarequest = extrarequest;
	}

	@Override
	public String toString() {
		return "Nonmem_order [ordernumber=" + ordernumber + ", orderdate=" + orderdate + ", phonenumber=" + phonenumber
				+ ", shippingnumber=" + shippingnumber + ", shippingaddress=" + shippingaddress + ", shippingPHnumber="
				+ shippingPHnumber + ", extrarequest=" + extrarequest + "]";
	}
	
}
