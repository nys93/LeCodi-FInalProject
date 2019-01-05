package com.lecodi.foru.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lecodi.foru.mapper.CartMapper;
import com.lecodi.foru.vo.Cart;

@Repository
public class CartDAO {
	
	@Autowired
	SqlSession sqlsession;

	public ArrayList<Cart> getList(String id) {
		ArrayList<Cart> clist = null;
		CartMapper mapper = sqlsession.getMapper(CartMapper.class);
		try{
			clist = mapper.getList(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return clist;
	}

	public int addCart(Cart cart) {
		int result = 0;
		CartMapper mapper = sqlsession.getMapper(CartMapper.class);
		try{
			result = mapper.addCart(cart);
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	public void emptyCart(String id) {
		CartMapper mapper = sqlsession.getMapper(CartMapper.class);
		try{
			mapper.emptyCart(id);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteCart(Cart cart) {
		CartMapper mapper = sqlsession.getMapper(CartMapper.class);
		try{
			mapper.deleteCart(cart);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	
}
