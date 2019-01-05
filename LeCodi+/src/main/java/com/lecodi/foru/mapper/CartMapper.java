package com.lecodi.foru.mapper;

import java.util.ArrayList;

import com.lecodi.foru.vo.Cart;

public interface CartMapper {

	ArrayList<Cart> getList(String id);

	int addCart(Cart cart);

	void emptyCart(String id);

	void deleteCart(Cart cart);

}
