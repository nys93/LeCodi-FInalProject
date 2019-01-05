package com.lecodi.foru.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lecodi.foru.controller.OrderController;
import com.lecodi.foru.mapper.MemberMapper;
import com.lecodi.foru.mapper.OrderMapper;
import com.lecodi.foru.vo.Member;
import com.lecodi.foru.vo.Tbl_order;

@Repository
public class OrderDAO {

	@Autowired
	SqlSession sqlsession;

	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

	
	public int insertOrder(Tbl_order order) {
		logger.info("---> insert Order Start");
		return sqlsession.getMapper(OrderMapper.class).insertOrder(order);
	}


	public ArrayList<Tbl_order> getOrderList(String userid) {
		
		ArrayList<Tbl_order> orderList = new ArrayList<Tbl_order>();
		try{
			OrderMapper mapper = sqlsession.getMapper(OrderMapper.class);
			orderList = mapper.getOrderList(userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return orderList;
	}


/*	public Tbl_order getOrderDetails1(int productcode1) {
		
		logger.info("order1 시작");
		
		OrderMapper mapper = sqlsession.getMapper(OrderMapper.class);
		Tbl_order order1 = null;
		try{
			order1 = mapper.getOrderDetail1(productcode1);
		}catch(Exception e){
			e.printStackTrace();
		}
		logger.info("order1 종료");
		
		return order1;
		
	}


	public Tbl_order getOrderDetails2(int productcode2) {
		logger.info("order2 시작");
		
		OrderMapper mapper = sqlsession.getMapper(OrderMapper.class);
		Tbl_order order2 = null;
		try{
			order2 = mapper.getOrderDetail2(productcode2);
		}catch(Exception e){
			e.printStackTrace();
		}
		logger.info("order2 종료");
		
		return order2;
		
	}
	
	public Tbl_order getOrderDetails3(int productcode3) {
		logger.info("order3 시작");
		
		OrderMapper mapper = sqlsession.getMapper(OrderMapper.class);
		Tbl_order order3 = null;
		try{
			order3 = mapper.getOrderDetail3(productcode3);
		}catch(Exception e){
			e.printStackTrace();
		}
		logger.info("order2 종료");
		
		return order3;
	}
	
	public Tbl_order getOrderDetails4(int productcode4) {
		logger.info("order4 시작");
		
		OrderMapper mapper = sqlsession.getMapper(OrderMapper.class);
		Tbl_order order4 = null;
		try{
			order4 = mapper.getOrderDetail4(productcode4);
		}catch(Exception e){
			e.printStackTrace();
		}
		logger.info("order4 종료");
		
		return order4;
	}

	public Tbl_order getOrderDetails5(int productcode5) {
		logger.info("order5 시작");
		
		OrderMapper mapper = sqlsession.getMapper(OrderMapper.class);
		Tbl_order order5 = null;
		try{
			order5 = mapper.getOrderDetail5(productcode5);
		}catch(Exception e){
			e.printStackTrace();
		}
		logger.info("order5 종료");
		
		return order5;
	}*/
	
	/*public ArrayList<Integer> getTotalprice(String userid) {
		ArrayList<Integer> totalprice = new ArrayList<Integer>();
		OrderMapper mapper = sqlsession.getMapper(OrderMapper.class);
		totalprice = mapper.getTotalprice(userid);
		
		return totalprice;
	}*/

}

