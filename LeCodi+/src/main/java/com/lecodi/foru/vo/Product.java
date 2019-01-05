package com.lecodi.foru.vo;

public class Product {				//제품
	
	private int productcode;		//제품 번호
	private String productname;		//옷 이름
	private int productamount;		//재고
	private int price;				//가격
	private String cloth_category;	//카테고리
	private String manufaturedDate;	//생산 일자
	private int discountrate;		//할인율
	private int cloth_size;			//옷 사이즈
	private String color;			//옷 색상
	private String imageaddress1;	//이미지 저장 주소
	private String imageaddress2;
	private String imageaddress3;
	private String imageaddress4;
	private String imageaddress5;

	public Product() {
	}

	public Product(int productcode, int productamount, int price, String cloth_category, String manufaturedDate,
			int discountrate, int cloth_size, String color, String imageaddress1, String productname,
			String imageaddress2, String imageaddress3, String imageaddress4, String imageaddress5) {
		this.productcode = productcode;
		this.productamount = productamount;
		this.price = price;
		this.cloth_category = cloth_category;
		this.manufaturedDate = manufaturedDate;
		this.discountrate = discountrate;
		this.cloth_size = cloth_size;
		this.color = color;
		this.imageaddress1 = imageaddress1;
		this.productname = productname;
		this.imageaddress2 = imageaddress2;
		this.imageaddress3 = imageaddress3;
		this.imageaddress4 = imageaddress4;
		this.imageaddress5 = imageaddress5;
	}
	
	public int getProductcode() {
		return productcode;
	}
	
	public void setProductcode(int productcode) {
		this.productcode = productcode;
	}
	
	public int getProductamount() {
		return productamount;
	}
	
	public void setProductamount(int productamount) {
		this.productamount = productamount;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getCloth_category() {
		return cloth_category;
	}
	
	public void setCloth_category(String cloth_category) {
		this.cloth_category = cloth_category;
	}
	
	public String getManufaturedDate() {
		return manufaturedDate;
	}
	
	public void setManufaturedDate(String manufaturedDate) {
		this.manufaturedDate = manufaturedDate;
	}
	
	public int getDiscountrate() {
		return discountrate;
	}
	
	public void setDiscountrate(int discountrate) {
		this.discountrate = discountrate;
	}
	
	public int getCloth_size() {
		return cloth_size;
	}
	
	public void setCloth_size(int cloth_size) {
		this.cloth_size = cloth_size;
	}
	
	public String getColor() {
		return color;
	}
	
	public void setColor(String color) {
		this.color = color;
	}
	
	public String getImageaddress1() {
		return imageaddress1;
	}
	
	public void setImageaddress1(String imageaddress1) {
		this.imageaddress1 = imageaddress1;
	}
	
	public String getProductname() {
		return productname;
	}
	
	public void setProductname(String productname) {
		this.productname = productname;
	}
	
	public String getImageaddress2() {
		return imageaddress2;
	}
	
	public void setImageaddress2(String imageaddress2) {
		this.imageaddress2 = imageaddress2;
	}
	
	public String getImageaddress3() {
		return imageaddress3;
	}
	
	public void setImageaddress3(String imageaddress3) {
		this.imageaddress3 = imageaddress3;
	}
	
	public String getImageaddress4() {
		return imageaddress4;
	}
	
	public void setImageaddress4(String imageaddress4) {
		this.imageaddress4 = imageaddress4;
	}
	
	public String getImageaddress5() {
		return imageaddress5;
	}
	
	public void setImageaddress5(String imageaddress5) {
		this.imageaddress5 = imageaddress5;
	}
	
	
	@Override
	public String toString() {
		return "Product [productcode=" + productcode + ", productamount=" + productamount + ", price=" + price
				+ ", cloth_category=" + cloth_category + ", manufaturedDate=" + manufaturedDate + ", discountrate="
				+ discountrate + ", cloth_size=" + cloth_size + ", color=" + color + ", imageaddress1=" + imageaddress1
				+ ", productname=" + productname + ", imageaddress2=" + imageaddress2 + ", imageaddress3="
				+ imageaddress3 + ", imageaddress4=" + imageaddress4 + ", imageaddress5=" + imageaddress5
				+ ", getProductcode()=" + getProductcode() + ", getProductamount()=" + getProductamount()
				+ ", getPrice()=" + getPrice() + ", getCloth_category()=" + getCloth_category()
				+ ", getManufaturedDate()=" + getManufaturedDate() + ", getDiscountrate()=" + getDiscountrate()
				+ ", getCloth_size()=" + getCloth_size() + ", getColor()=" + getColor() + ", getImageaddress1()="
				+ getImageaddress1() + ", getProductname()=" + getProductname() + ", getImageaddress2()="
				+ getImageaddress2() + ", getImageaddress3()=" + getImageaddress3() + ", getImageaddress4()="
				+ getImageaddress4() + ", getImageaddress5()=" + getImageaddress5() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
	
}
