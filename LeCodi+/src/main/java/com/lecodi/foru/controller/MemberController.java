package com.lecodi.foru.controller;

import java.io.UnsupportedEncodingException;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.lecodi.foru.dao.MailHandler;
import com.lecodi.foru.dao.MemberDAO;
import com.lecodi.foru.vo.Member;

@Controller
@RequestMapping("member")
@SessionAttributes("member")
public class MemberController {
	
	@Autowired
	MemberDAO mdao;
	@Inject
	JavaMailSender mailSender;
/*	@Autowired 
	MemberService memberService;*/
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	/**
	 * 
	 * 회원가입 정보 받아 저장, 이메일 인증
	 * @return joinCofirm
	 */
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String insertMember(Member member, Model model) throws MessagingException, UnsupportedEncodingException {
		logger.info("---> Join Member Start");
		
		boolean insert = mdao.insertMember(member);
		
		if(insert){
			logger.info("Join Member Scucess");
			
			System.out.println("---> insertMember() 기능 처리 및 해당 이메일로 이메일 발송");
			MailHandler sendMail = new MailHandler(mailSender);
			sendMail.setSubject("[이메일 인증]");
			sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
					/*.append("르코디에 가입해주셔서 감사합니다.<br><a href='http://localhost:8888/foru/member/verify?email_id=" + member.getEmail_id()
							+ "&email_domain=" + member.getEmail_domain())
					.append("' target='_blenk'>이메일 인증 확인</a>").toString());*/
					.append("르코디에 가입해주셔서 감사합니다.<br><a href='http://localhost:8888/foru/member/verify?userid=" + member.getUserid())
					.append("' target='_blenk'>이메일 인증 확인</a>").toString());
			sendMail.setFrom("Lecodi@Lecodi.com", "르코디");
			sendMail.setTo(member.getEmail_id() + "@" + member.getEmail_domain());
			sendMail.send();
			
			return "member/joinConfirm";
		}else{
			logger.info("---> Join Member fail");
			
			// 실패 메시지 Alert
			model.addAttribute("resultMsg","Fail");
			// 입력했던 내용 보존
			model.addAttribute("member", member);
		
			return "member/joinForm";
		}
	}
	
	
	/**
	 * 회원가입 성공화면으로 이동
	 * @return joinCompleted
	 */
	@RequestMapping(value = "verify", method = RequestMethod.GET)
	public String signSuccess(/*@RequestParam String email_id, @RequestParam String email_domain*/@RequestParam String userid) {
		System.out.println("이메일 인증기능 처리" + userid);
		//System.out.println(email_id + email_domain);
		Member member = new Member();
		/*member.setEmail_id(email_id);
		member.setEmail_domain(email_domain);*/
		member.setUserid(userid);
		mdao.verifyMember(member);
		return "member/joinCompleted";
	}
	
	
	/**
	 * 동의 화면으로 연결
	 * @return argreePage
	 */
	@RequestMapping(value ="agree", method = RequestMethod.GET)
	public String agreePage(HttpSession session){
		String id = (String) session.getAttribute("loginId");
		if(id != null){
			return "../";
		}
		logger.info("---> Move agreePage");
		return "member/agreePage";
	}
	
	
	/**
	 * 회원가입 페이지 연결
	 * @return join form
	 */
	@RequestMapping(value = "joinForm", method = RequestMethod.POST)
	public String joinForm(Model model){
		
		logger.info("---> Move JoinForm");
		
		Member member = new Member();
		model.addAttribute("member", member);
		
		return "member/joinForm";
	}

	
	/**
	 * 아이디 중복체크
	 * @return 현재 가입중인 페이지로 바로 연결 아니면 바로 값을 받아다 사용할 수 있도록
	 */	
	@ResponseBody
	@RequestMapping(value = "duplicate", method = RequestMethod.POST)
	public String checkDuplicate(String userid) {
		logger.info("---> 아이디 중복검사" + "전달받은 값:" + userid);
		Member checkid = mdao.checkDuplicate(userid);
		
		if(userid.contains("@")){			
			return "@";
		}else if(userid.trim().length()== 0){
			return "blank";
		}else if( checkid == null) {
			return "0";
		}
		else {
			return "1";			
		}
	}
	
	
	/**
	 * 아이디, 비밀번호 찾기
	 */
	@RequestMapping(value = "find", method = RequestMethod.GET)
	public String find(){
		return "member/find";
	}
	
	
	/**
	 * 아이디, 비밀번호 찾기 완료 페이지
	 */
	@RequestMapping(value = "findComplete", method = RequestMethod.GET)
	public String findComplete(){
		return "../member/findComplete";
	}
	
	/**
	 * ajax를 사용하여 중복체크하여 남는 컨트롤러
	 * @return main/login page
	 */

	@RequestMapping(value = "checkid", method = RequestMethod.POST)
	public String checkid(){
		return "";
	}
	
	
	/**
	 * 로그인 페이지로 연결
	 * @return login form
	 */
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginForm(HttpSession session){
		String id = (String) session.getAttribute("loginId");
		if(id != null){
			return "../";
		}
		return "member/loginForm";
	}
	
	
	/**
	 * 로그인 정보
	 * 로그인 된 아이디 세션에 저장 후 메인으로 돌려보냄
	 * @return main
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(String userid, String password, HttpSession session){
		
		String status = mdao.checkStatus(userid);
		
		if(status == null){		//없는 아이디
			session.setAttribute("result", "없는 회원");
		}else if(status.equals("n")){	//탈퇴한 유저
			session.setAttribute("result", "탈퇴한 회원");
		}else if(status.equals("y")){	//현재 유저
			
			String checkPass = mdao.login(userid);
			
			if(checkPass.equals(password)){
				session.setAttribute("loginId", userid);
				return "redirect:../";
			}else{	//비밀번호 일치X
				session.setAttribute("result", "비밀번호 오류");
			}
		}
		return "redirect:../member/login";
	}
	
	
	/**
	 * 로그아웃
	 * 세션에 저장된 정보 삭제 후 메인으로 돌려보냄
	 * @return main
	 */
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
	
	
	/**
	 * 마이 페이지로 연결
	 * @return mypage
	 */
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public ModelAndView/*String*/ mypage(HttpServletRequest request, Model model ){
		logger.info("---> mypage로 이동");
		HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("loginId");
		
		Member member = mdao.getMember(loginId);
		
		System.out.println(member.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mypage");	// 스트링의 리턴
		mav.addObject("Member", member);
		return mav;
		
	}
	
	/**
	 * 마이 페이지로 회원 정보 조회/수정 연결
	 * @return mypage_update
	 */
	@RequestMapping(value = "mypage_update", method = RequestMethod.GET)
	public String MoveUpdateMember(Member member, HttpServletRequest request, Model model){
		logger.info("---> mypage_update로 이동");
		///String memid = (String)session.get
		
		HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("loginId");
		
		member = mdao.getMember(loginId);
		
		model.addAttribute("Member", member);
		
		return "member/mypage_update";
	}

	/**
	 * 마이 페이지로 회원 정보 조회/수정 하기
	 * @return mypage_update
	 */
	@RequestMapping(value = "updateMember", method = RequestMethod.POST)
	public String updateMember(Member member, HttpServletRequest request, Model model){
		logger.info("---> 수정완료 후 mypage로 이동");
		
		HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("loginId");
		
		boolean update = mdao.updateMember(member);
		
		if(update){
			logger.info("UpdateMember Scucess");
			member = mdao.getMember(loginId);
			
			model.addAttribute("Member", member);
		}else{
			logger.info("---> UpdateMember fail");
			
			// 실패 메시지 Alert
			model.addAttribute("resultMsg","Fail");
			// 입력했던 내용 보존
			model.addAttribute("member", member);
		
			return "redirect:member/mypage_update";
		}
		
		
		return "member/mypage";
	}

}
