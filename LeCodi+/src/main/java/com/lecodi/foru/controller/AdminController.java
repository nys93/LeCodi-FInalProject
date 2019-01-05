package com.lecodi.foru.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lecodi.foru.dao.BoardDAO;
import com.lecodi.foru.dao.productDAO;
import com.lecodi.foru.util.PageNavigator;
import com.lecodi.foru.vo.Board;
import com.lecodi.foru.vo.Product;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	productDAO pdao;
	@Autowired
	BoardDAO bdao;
	
	private final int LIMIT = 10;
	private final int PAGES = 5;

	
	@RequestMapping(value = "main", method = RequestMethod.GET)
	public String goMain(HttpSession session){
		String id = (String) session.getAttribute("loginId");
		if(!id.equals("admin")){
			return "../";
		}
		return "admin/mainPage";
	}
	
	
	@RequestMapping(value = "insertProduct", method = RequestMethod.GET)
	public String insertProduct(HttpSession session){
		String id = (String) session.getAttribute("loginId");
		if(!id.equals("admin")){
			return "../";
		}
		return "admin/insertProduct";
	}
	
	
	@RequestMapping(value = "insertProduct", method = RequestMethod.POST)
	public String insert(HttpSession session, Product p){
		String id = (String) session.getAttribute("loginId");
		if(!id.equals("admin")){
			return "../";
		}
		int result = pdao.insert(p);
		if(result == 1){
			System.out.println("입력 완료");
		}else{
			System.out.println("[!]입력 실패");
		}
		return "admin/insertProduct";
	}
	
	
	/**
	 * 문의글 페이지 이동, 전체 불러오기
	 * @return
	 */
	@RequestMapping(value = "qnaList", method = RequestMethod.GET)
	public String qnaList(HttpSession session, Model model, @RequestParam(value = "page", defaultValue = "1") int page){
		String id = (String) session.getAttribute("loginId");
		if(!id.equals("admin")){
			return "../";
		}
		//페이징 처리
		int totalCount = bdao.selectTotalCount();
		PageNavigator navi = new PageNavigator(LIMIT, PAGES, page, totalCount);
		
		model.addAttribute("navi", navi);

		ArrayList<Board> qnaList = bdao.getQnaList(LIMIT, page);
		
		session.setAttribute("qnaList", qnaList);
		return "admin/qnaList";
	}
	
	/**
	 * 관리자 문의글 확인
	 * @return
	 */
	@RequestMapping(value = "viewBoard", method = RequestMethod.GET)
	public String viewBoard(HttpSession session, int boardnum){
		Board b = bdao.getBoard(boardnum);
		session.setAttribute("board", b);
		return "admin/viewBoard";
	}
	
}
