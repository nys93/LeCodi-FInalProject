package com.lecodi.foru.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lecodi.foru.dao.BoardDAO;
import com.lecodi.foru.util.PageNavigator;
import com.lecodi.foru.vo.Board;
import com.lecodi.foru.vo.Reply;

@Controller
@RequestMapping("board")
public class BoardController {
	
	@Autowired
	BoardDAO bdao;
	
	private final int LIMIT = 10;
	private final int PAGES = 5;
	
	/**
	 * 고객센터(board main) 페이지
	 */
	@RequestMapping(value = "csc", method = RequestMethod.GET)
	public String csc(){
		return "board/csc";
	}
	
	
	/**
	 * 공지사항 페이지
	 * 공지사항에 저장된 글 불러와 페이지로 전송
	 */
	@RequestMapping(value = "notice", method = RequestMethod.GET)
	public String notice(HttpSession session){
		ArrayList<Board> noticeList = bdao.getList();
		session.setAttribute("noticeList", noticeList);
		return "board/notice";
	}
	
	
	/**
	 * 글 상세보기
	 * 글 번호를 넘겨줘서 글 받아옴
	 */
	@RequestMapping(value = "viewBoard", method = RequestMethod.GET)//post로 보내나
	public String viewBoard(HttpSession session, Model m, int boardnum){
		String id = (String) session.getAttribute("loginId");
		String checkId = bdao.getId(boardnum);
		if(id.equals(checkId)){
			Board b = bdao.getBoard(boardnum);
			m.addAttribute("board", b);
		}else{
			return "board/qnaList";
		}
		return "board/viewBoard";
	}
	
	
	/**
	 * 문의하기 페이지 연결
	 */
	@RequestMapping(value = "qna", method = RequestMethod.GET)
	public String qna(){
		return "board/qna";
	}
	
	
	/**
	 * 문의글 작성
	 * @param session, Board
	 */
	@RequestMapping(value = "writeQ", method = RequestMethod.POST)
	public String writeQ(HttpSession session, Board b){
		b.setUserid((String)session.getAttribute("loginId"));
		int result = bdao.writeQ(b);
		System.out.println(result);
		return "redirect:../board/qnaList";
	}
	
	
	/**
	 * 내 문의 내역 페이지
	 */
	@RequestMapping(value = "qnaList", method = RequestMethod.GET)
	public String qnaList(HttpSession session, Model model, @RequestParam(value = "page", defaultValue = "1") int page){
		ArrayList<Board> myList = null;
		String id = (String) session.getAttribute("loginId");
		
		int totalCount = bdao.selectTotalCount();
		PageNavigator navi = new PageNavigator(LIMIT, PAGES, page, totalCount);
		model.addAttribute("navi", navi);

		myList = bdao.getMyList(id, LIMIT, page);
		session.setAttribute("myList", myList);
		return "board/qnaList";
	}
	
	
	/**
	 * 자주 묻는 질문
	 */
	@RequestMapping(value = "bestQuestion", method = RequestMethod.GET)
	public String bestQuestion(){
		return "board/bestQuestion";
	}
	
	
	/**
	 * 댓글 쓰기
	 */
	@RequestMapping(value = "writeReply", method = RequestMethod.POST)
	@ResponseBody
	public void writeReply(HttpSession session, String reply, int boardnum){
		String id = (String) session.getAttribute("loginId");
		Reply r = new Reply();
		r.setBoardnum(boardnum);
		r.setContext(reply);
		r.setUserid(id);
		int result = bdao.writeR(r);
		System.out.println(result + "개 입력 성공");
	}
	
	
	/**
	 * 댓글 읽어오기
	 */
	@RequestMapping(value = "readReply", method = RequestMethod.GET)
	@ResponseBody
	public ArrayList<Reply> readReply(int boardnum){
		ArrayList<Reply> list = null;
		list = bdao.getReply(boardnum);
		return list;
	}
	
	
	/**
	 * 댓글 삭제
	 */
	@RequestMapping(value = "deleteReply", method = RequestMethod.GET)
	@ResponseBody
	public void deleteReply(HttpSession session, int replynum){
//		String id = (String) session.getAttribute("loginId");
//		String checkId = bdao.getId(replynum);
		bdao.deleteReply(replynum);
	}

}

