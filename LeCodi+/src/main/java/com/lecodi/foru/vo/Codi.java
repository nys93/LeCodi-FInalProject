package com.lecodi.foru.vo;

import java.util.List;

import com.google.gson.annotations.SerializedName;

public class Codi {
	
	@SerializedName("itemArray")
	private List<ItemArray> itemArray;
	

	public Codi() {
		super();
	}
	
	public List<ItemArray> getItemArray() {
		return itemArray;
	}

	public void setItemArray(List<ItemArray> itemArray) {
		this.itemArray = itemArray;
	}

	public Codi(List<ItemArray> itemArray) {
		super();
		this.itemArray = itemArray;
	}



	@Override
	public String toString() {
		return "Codi [itemArray=" + itemArray +"]";
	}

	

	
	

}
