package com.lecodi.foru.vo;

public class Products {			//창고(오프라인) 재고
	
	private int storecode;		//창고(오프라인) 코드
	private int productcode;	//제품 번호
	private int productamount;	//재고
	
	public Products() {
	}

	public Products(int storecode, int productcode, int productamount) {
		this.storecode = storecode;
		this.productcode = productcode;
		this.productamount = productamount;
	}

	public int getStorecode() {
		return storecode;
	}

	public void setStorecode(int storecode) {
		this.storecode = storecode;
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

	@Override
	public String toString() {
		return "Products [storecode=" + storecode + ", productcode=" + productcode + ", productamount=" + productamount
				+ "]";
	}
	
	

}
