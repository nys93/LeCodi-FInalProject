package com.lecodi.foru.vo;

public class Cart {				//장바구니
	
	private String cartdate;	//카트에 담은 날짜
	private String userid;		//아이디
	private int productcode;	//제품 코드
	private int cartmount;		//카트에 담은 수량
	private String color;
	private String c_size;
	private String productname;
	private int price;
	private String cartnum;
	
	public Cart() {
	}
	
	public Cart(String cartdate, String userid, int productcode, int cartmount, String color, String c_size,
			String productname, int price, String cartnum) {
		this.cartdate = cartdate;
		this.userid = userid;
		this.productcode = productcode;
		this.cartmount = cartmount;
		this.color = color;
		this.c_size = c_size;
		this.productname = productname;
		this.price = price;
		this.cartnum = cartnum;
	}
	
	public String getCartdate() {
		return cartdate;
	}

	public void setCartdate(String cartdate) {
		this.cartdate = cartdate;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getProductcode() {
		return productcode;
	}

	public void setProductcode(int productcode) {
		this.productcode = productcode;
	}

	public int getCartmount() {
		return cartmount;
	}

	public void setCartmount(int cartmount) {
		this.cartmount = cartmount;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getC_size() {
		return c_size;
	}

	public void setC_size(String c_size) {
		this.c_size = c_size;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getCartnum() {
		return cartnum;
	}

	public void setCartnum(String cartnum) {
		this.cartnum = cartnum;
	}

	@Override
	public String toString() {
		return "Cart [cartdate=" + cartdate + ", userid=" + userid + ", productcode=" + productcode + ", cartmount="
				+ cartmount + ", color=" + color + ", c_size=" + c_size + ", productname=" + productname + ", price="
				+ price + ", cartnum=" + cartnum + "]";
	}

	
	

}
