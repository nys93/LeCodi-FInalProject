package com.lecodi.foru.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lecodi.foru.dao.CartDAO;
import com.lecodi.foru.vo.Cart;

@Controller
@RequestMapping("cart")
public class CartController {

	@Autowired
	CartDAO cdao;
	
	/**
	 * �옣諛붽뎄�땲濡� �씠�룞
	 * @return cartPage
	 */
	@RequestMapping(value = "main", method = RequestMethod.GET)
	public String cartPage(HttpSession session, Model m){
		String id = (String) session.getAttribute("loginId");
		ArrayList<Cart> cartList = cdao.getList(id);
		for(Cart a : cartList){
			System.out.println("hi" + a);
		}
		m.addAttribute("cartList", cartList);
		return "cart/cartPage";
	}
	
	
	/**
	 * �옣諛붽뎄�땲 鍮꾩슦湲�
	 * �옣諛붽뎄�땲 �꽭�뀡 鍮꾩슦怨� �옣諛붽뎄�땲 �럹�씠吏�濡� 由ы꽩
	 * @return cartPage
	 */
	@RequestMapping(value = "emptyCart", method = RequestMethod.GET)
	public String emptyCart(HttpSession session){
		String id = (String) session.getAttribute("loginId");
		cdao.emptyCart(id);
		return "redirect:../cart/main";
	}
	
	/**
	 * �옣諛붽뎄�땲�뿉 �긽�뭹 異붽�
	 */
	@RequestMapping(value = "addCart", method = RequestMethod.POST)
	public String addCart(HttpSession session, Cart cart){
		String id = (String) session.getAttribute("loginId");
		cart.setUserid(id);
		System.out.println(cart);
		int result = cdao.addCart(cart);
		return "redirect:/cart/main";
	}
	
	
	/**
	 * �꽑�깮 �긽�뭹 �옣諛붽뎄�땲�뿉�꽌 �궘�젣
	 */
	@RequestMapping(value = "deleteGoods", method = RequestMethod.GET)
	public String deleteGoods(HttpSession session, int productcode){
		String id = (String) session.getAttribute("loginId");
		System.out.println(productcode);
		Cart cart = new Cart();
		cart.setProductcode(productcode);
		cart.setUserid(id);
//		for(int i : codeList){
//			cdao.deleteCart(id, codeList[i]);
//		}
		cdao.deleteCart(cart);
		return "redirect:./cart/cartPage";
	}
	
	
	/**
	 * �옣諛붽뎄�땲 �닔�젙
	 * �닔�웾, �깋 蹂�寃� �벑�쓽 �뾽�뜲�씠�듃
	 */
	@RequestMapping(value = "updateCart", method = RequestMethod.GET)
	public String updateCart(HttpSession session){
		return "redirect:./cart/main";
	}
}
