package com.lecodi.foru.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lecodi.foru.dao.CartDAO;
import com.lecodi.foru.dao.MemberDAO;
import com.lecodi.foru.dao.OrderDAO;
import com.lecodi.foru.vo.Cart;
import com.lecodi.foru.vo.Member;
import com.lecodi.foru.vo.Product;
import com.lecodi.foru.vo.Tbl_order;

@Controller
@RequestMapping("order")
public class OrderController {
	
	@Autowired
	CartDAO cdao;
	@Autowired
	MemberDAO mdao;
	@Autowired
	OrderDAO orderdao;
	
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	/**
	 * 전체 주문하기
	 * 사용자가 로그인 중일 경우 회원 주문 페이지로
	 */
	@RequestMapping(value = "orderForm", method = RequestMethod.GET)
	public String orderForm(HttpSession session, Model model){
		logger.info("---> orderform으로 get이동");
		String id = (String) session.getAttribute("loginId");
		ArrayList<Cart> cartList = cdao.getList(id);
		int cartListSize = cartList.size();
		Member m = mdao.getMember(id);
		session.setAttribute("cartList", cartList);
		session.setAttribute("member", m);
		model.addAttribute("size", cartListSize);
		return "order/orderForm";
	}
	
	
	/**
	 * 선택 주문하기
	 */
	@ResponseBody
	@RequestMapping(value = "orderForm", method = RequestMethod.POST)
	public String selectOrder(HttpSession session, Product p){
		String id = (String) session.getAttribute("loginId");
		Cart c = new Cart();
		c.setC_size(p.getCloth_size()+"");
		c.setCartmount(p.getProductamount());
		c.setColor(p.getColor());
		c.setPrice(p.getPrice());
		c.setProductcode(p.getProductcode());
		c.setProductname(p.getProductname());
		c.setUserid((String)session.getAttribute("loginId"));
		session.setAttribute("cartList", c);
		return "order/orderForm";
	}
	
	
	/**
	 * 비회원 주문 페이지로 이동
	 */
	@RequestMapping(value = "nonmemOrder")
	public String nonmemOrderForm(){
		return "order/nonmemOrder";
	}
	
	
	/**
	 * 결제 화면으로 전송
	 * @param cartnum 
	 */
	@RequestMapping(value = "payment", method = RequestMethod.POST)
	public String pay(HttpServletRequest request, HttpSession session, Model model, Tbl_order order){
		System.out.println(order);
		logger.info("---> payment으로 post이동");
		String id = (String) session.getAttribute("loginId");
		
		
		int insertOrder = orderdao.insertOrder(order);
		logger.info("---> insertOrder으로 성공");
			
		Member m = mdao.getMember(id);
		session.setAttribute("member", m);
		model.addAttribute("member", m);
		model.addAttribute("order", insertOrder);
		return "order/payment";
	}
	
	
	/**
	 * 주문 내역 목록 확인
	 */
	@RequestMapping(value = "orderList", method = RequestMethod.GET)
	public String orderList(HttpSession session, Tbl_order order, Model model, String userid){
		
		String id = (String)session.getAttribute("loginId");
		
		
		ArrayList<Tbl_order> orderList = new ArrayList<Tbl_order>();
		
		
		
		Member m = mdao.getMember(id);
		session.setAttribute("member", m);
		logger.info("---> orderList 로 get이동");
		System.out.println(id);
		
		try{
			orderList = orderdao.getOrderList(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		model.addAttribute("orderList", orderList);
		
		
		return "order/orderList";
	}
	
	
	/**
	 * orderDetails
	 */
	@RequestMapping(value = "orderDetails", method = RequestMethod.GET)
	public String orderDetails(HttpSession session, Tbl_order order, Model model, String userid
			, int productcode1, int productcode2, int productcode3, int productcode4, int productcode5){
		
		logger.info("---> orderList 로 get이동");
		String id = (String)session.getAttribute("loginId");
		
		System.out.println(id);
		
		
		
		ArrayList<Tbl_order> orderList = new ArrayList<Tbl_order>();
		
		
		
		/*Tbl_order orderDetails1 = orderdao.getOrderDetails1(productcode1);
		Tbl_order orderDetails2 = orderdao.getOrderDetails2(productcode2);
		Tbl_order orderDetails3 = orderdao.getOrderDetails3(productcode3);
		Tbl_order orderDetails4 = orderdao.getOrderDetails4(productcode4);
		Tbl_order orderDetails5 = orderdao.getOrderDetails5(productcode5);
		*///HashMap<String, ArrayList<Tbl_order>> oMap =new HashMap<String,ArrayList<Tbl_order>>();
		/*int orderNum = Integer.parseInt(orderList.get(0).toString());
		System.out.println("오더넘"+orderNum);
		 * */
		
		
		
		
		Member m = mdao.getMember(id);
		session.setAttribute("member", m);
		/*model.addAttribute("orderDetails1", orderDetails1);
		model.addAttribute("orderDetails2", orderDetails2);
		model.addAttribute("orderDetails3", orderDetails3);
		model.addAttribute("orderDetails4", orderDetails4);
		model.addAttribute("orderDetails5", orderDetails5);*/
		
		/*
		
		oMap.put(, value)
		
		
		try{
			orderList = orderdao.getOrderList(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		model.addAttribute("orderList", orderList);
		*/	
		return "order/orderDetails";
		
	}

}
