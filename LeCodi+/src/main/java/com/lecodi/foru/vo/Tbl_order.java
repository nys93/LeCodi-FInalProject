package com.lecodi.foru.vo;

public class Tbl_order {					//회원 주문
    private int ordernumber;         		// 주문번호   
    private String orderdate;           	// 작성날짜 
    private String userid;            		// 유저ID     fk
    private int postcode;                	// 우편번호
    private String address_primary;        	// 기본주소
    private String address_detail;         	// 상세주소
    private String phonenumber1;         	// 핸드폰 번호1
    private String phonenumber2;            // 핸드폰 번호2
    private String phonenumber3;            // 핸드폰 번호3
    private String extrarequest;            // 기타요구사항
    private String productname1;
    private String productname2;
    private String productname3;
    private String productname4;
    private String productname5;
    private int productcode1;           		// 제품코드 fk
    private int productcode2;
    private int productcode3;
    private int productcode4;
    private int productcode5;
    private int price1;
    private int price2;
    private int price3;
    private int price4;
    private int price5;
    private String c_size1;
    private String c_size2;
    private String c_size3;
    private String c_size4;
    private String c_size5;
    private String color1;
    private String color2;
    private String color3;
    private String color4;
    private String color5;
    private int mount1;               	   	// 물품 당 주문 수량
    private int mount2; 
    private int mount3; 
    private int mount4; 
    private int mount5; 
    
	public Tbl_order() {
		super();
	}

	public Tbl_order(int ordernumber, String orderdate, String userid, int postcode, String address_primary,
			String address_detail, String phonenumber1, String phonenumber2, String phonenumber3, String extrarequest,
			String productname1, String productname2, String productname3, String productname4, String productname5,
			int productcode1, int productcode2, int productcode3, int productcode4, int productcode5, int price1,
			int price2, int price3, int price4, int price5, String c_size1, String c_size2, String c_size3,
			String c_size4, String c_size5, String color1, String color2, String color3, String color4, String color5,
			int mount1, int mount2, int mount3, int mount4, int mount5) {
		super();
		this.ordernumber = ordernumber;
		this.orderdate = orderdate;
		this.userid = userid;
		this.postcode = postcode;
		this.address_primary = address_primary;
		this.address_detail = address_detail;
		this.phonenumber1 = phonenumber1;
		this.phonenumber2 = phonenumber2;
		this.phonenumber3 = phonenumber3;
		this.extrarequest = extrarequest;
		this.productname1 = productname1;
		this.productname2 = productname2;
		this.productname3 = productname3;
		this.productname4 = productname4;
		this.productname5 = productname5;
		this.productcode1 = productcode1;
		this.productcode2 = productcode2;
		this.productcode3 = productcode3;
		this.productcode4 = productcode4;
		this.productcode5 = productcode5;
		this.price1 = price1;
		this.price2 = price2;
		this.price3 = price3;
		this.price4 = price4;
		this.price5 = price5;
		this.c_size1 = c_size1;
		this.c_size2 = c_size2;
		this.c_size3 = c_size3;
		this.c_size4 = c_size4;
		this.c_size5 = c_size5;
		this.color1 = color1;
		this.color2 = color2;
		this.color3 = color3;
		this.color4 = color4;
		this.color5 = color5;
		this.mount1 = mount1;
		this.mount2 = mount2;
		this.mount3 = mount3;
		this.mount4 = mount4;
		this.mount5 = mount5;
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

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getPostcode() {
		return postcode;
	}

	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}

	public String getAddress_primary() {
		return address_primary;
	}

	public void setAddress_primary(String address_primary) {
		this.address_primary = address_primary;
	}

	public String getAddress_detail() {
		return address_detail;
	}

	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}

	public String getPhonenumber1() {
		return phonenumber1;
	}

	public void setPhonenumber1(String phonenumber1) {
		this.phonenumber1 = phonenumber1;
	}

	public String getPhonenumber2() {
		return phonenumber2;
	}

	public void setPhonenumber2(String phonenumber2) {
		this.phonenumber2 = phonenumber2;
	}

	public String getPhonenumber3() {
		return phonenumber3;
	}

	public void setPhonenumber3(String phonenumber3) {
		this.phonenumber3 = phonenumber3;
	}

	public String getExtrarequest() {
		return extrarequest;
	}

	public void setExtrarequest(String extrarequest) {
		this.extrarequest = extrarequest;
	}

	public String getProductname1() {
		return productname1;
	}

	public void setProductname1(String productname1) {
		this.productname1 = productname1;
	}

	public String getProductname2() {
		return productname2;
	}

	public void setProductname2(String productname2) {
		this.productname2 = productname2;
	}

	public String getProductname3() {
		return productname3;
	}

	public void setProductname3(String productname3) {
		this.productname3 = productname3;
	}

	public String getProductname4() {
		return productname4;
	}

	public void setProductname4(String productname4) {
		this.productname4 = productname4;
	}

	public String getProductname5() {
		return productname5;
	}

	public void setProductname5(String productname5) {
		this.productname5 = productname5;
	}

	public int getProductcode1() {
		return productcode1;
	}

	public void setProductcode1(int productcode1) {
		this.productcode1 = productcode1;
	}

	public int getProductcode2() {
		return productcode2;
	}

	public void setProductcode2(int productcode2) {
		this.productcode2 = productcode2;
	}

	public int getProductcode3() {
		return productcode3;
	}

	public void setProductcode3(int productcode3) {
		this.productcode3 = productcode3;
	}

	public int getProductcode4() {
		return productcode4;
	}

	public void setProductcode4(int productcode4) {
		this.productcode4 = productcode4;
	}

	public int getProductcode5() {
		return productcode5;
	}

	public void setProductcode5(int productcode5) {
		this.productcode5 = productcode5;
	}

	public int getPrice1() {
		return price1;
	}

	public void setPrice1(int price1) {
		this.price1 = price1;
	}

	public int getPrice2() {
		return price2;
	}

	public void setPrice2(int price2) {
		this.price2 = price2;
	}

	public int getPrice3() {
		return price3;
	}

	public void setPrice3(int price3) {
		this.price3 = price3;
	}

	public int getPrice4() {
		return price4;
	}

	public void setPrice4(int price4) {
		this.price4 = price4;
	}

	public int getPrice5() {
		return price5;
	}

	public void setPrice5(int price5) {
		this.price5 = price5;
	}

	public String getC_size1() {
		return c_size1;
	}

	public void setC_size1(String c_size1) {
		this.c_size1 = c_size1;
	}

	public String getC_size2() {
		return c_size2;
	}

	public void setC_size2(String c_size2) {
		this.c_size2 = c_size2;
	}

	public String getC_size3() {
		return c_size3;
	}

	public void setC_size3(String c_size3) {
		this.c_size3 = c_size3;
	}

	public String getC_size4() {
		return c_size4;
	}

	public void setC_size4(String c_size4) {
		this.c_size4 = c_size4;
	}

	public String getC_size5() {
		return c_size5;
	}

	public void setC_size5(String c_size5) {
		this.c_size5 = c_size5;
	}

	public String getColor1() {
		return color1;
	}

	public void setColor1(String color1) {
		this.color1 = color1;
	}

	public String getColor2() {
		return color2;
	}

	public void setColor2(String color2) {
		this.color2 = color2;
	}

	public String getColor3() {
		return color3;
	}

	public void setColor3(String color3) {
		this.color3 = color3;
	}

	public String getColor4() {
		return color4;
	}

	public void setColor4(String color4) {
		this.color4 = color4;
	}

	public String getColor5() {
		return color5;
	}

	public void setColor5(String color5) {
		this.color5 = color5;
	}

	public int getMount1() {
		return mount1;
	}

	public void setMount1(int mount1) {
		this.mount1 = mount1;
	}

	public int getMount2() {
		return mount2;
	}

	public void setMount2(int mount2) {
		this.mount2 = mount2;
	}

	public int getMount3() {
		return mount3;
	}

	public void setMount3(int mount3) {
		this.mount3 = mount3;
	}

	public int getMount4() {
		return mount4;
	}

	public void setMount4(int mount4) {
		this.mount4 = mount4;
	}

	public int getMount5() {
		return mount5;
	}

	public void setMount5(int mount5) {
		this.mount5 = mount5;
	}

	@Override
	public String toString() {
		return "Tbl_order [ordernumber=" + ordernumber + ", orderdate=" + orderdate + ", userid=" + userid
				+ ", postcode=" + postcode + ", address_primary=" + address_primary + ", address_detail="
				+ address_detail + ", phonenumber1=" + phonenumber1 + ", phonenumber2=" + phonenumber2
				+ ", phonenumber3=" + phonenumber3 + ", extrarequest=" + extrarequest + ", productname1=" + productname1
				+ ", productname2=" + productname2 + ", productname3=" + productname3 + ", productname4=" + productname4
				+ ", productname5=" + productname5 + ", productcode1=" + productcode1 + ", productcode2=" + productcode2
				+ ", productcode3=" + productcode3 + ", productcode4=" + productcode4 + ", productcode5=" + productcode5
				+ ", price1=" + price1 + ", price2=" + price2 + ", price3=" + price3 + ", price4=" + price4
				+ ", price5=" + price5 + ", c_size1=" + c_size1 + ", c_size2=" + c_size2 + ", c_size3=" + c_size3
				+ ", c_size4=" + c_size4 + ", c_size5=" + c_size5 + ", color1=" + color1 + ", color2=" + color2
				+ ", color3=" + color3 + ", color4=" + color4 + ", color5=" + color5 + ", mount1=" + mount1
				+ ", mount2=" + mount2 + ", mount3=" + mount3 + ", mount4=" + mount4 + ", mount5=" + mount5 + "]";
	}

	
	
	
	
    
}
