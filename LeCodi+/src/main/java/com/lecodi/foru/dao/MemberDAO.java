package com.lecodi.foru.dao;


import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lecodi.foru.mapper.MemberMapper;
import com.lecodi.foru.vo.Member;

@Repository("memberDAO")
//@Repository
public class MemberDAO {
   
	@Autowired
	SqlSession sqlsession;
	
	@Autowired
	SqlSessionTemplate mybatis;
	
   
	private static final Logger logger = LoggerFactory.getLogger(MemberDAO.class);
   
		/*
		 * 회원 가입 처리
		 */
   		public boolean insertMember(Member member){
   			logger.info("Join Member Start");
   			System.out.println("DAO유저 정보" + member.toString());
   			MemberMapper mapper = sqlsession.getMapper(MemberMapper.class);
   			int cnt = 0;
   			try{
   			cnt = mapper.insertMember(member);
   			logger.info("Join Member Result : " + cnt);
   			
	   		}catch(Exception e) {
				e.printStackTrace();
				
			}if(cnt == 1) {
				logger.info("Join Member Success");
				return true;
				
			}else {
				logger.info("Join Member Fail");
				return false;
			}
   		}

   		/*
   		 * 중복처리
   		 * */
   		public Member checkDuplicate(String userid){
   			
   			System.out.println("---> checkDuplicate() 기능처리");
  
   			return sqlsession.getMapper(MemberMapper.class).checkDuplicate(userid);
   		}
   		
   		/**
		 * 로그인
		 * @param userid
		 * @return password
		 */
		public String login(String userid){
			
			System.out.println("---> login() 기능처리");
			String password = "";
			
			try{
				MemberMapper mapper = sqlsession.getMapper(MemberMapper.class);
				password = mapper.login(userid);
			}catch(Exception e){
				e.printStackTrace();
			}
			return password;
		}

		/*
		 * 
		 * 인증 후 페이지 이동
		 * */
		public void verifyMember(Member member) {
			System.out.println("---> verifyMember() 기능처리");
			sqlsession.getMapper(MemberMapper.class).verifyMember(member);
			
		}

		public boolean updateMember(Member member) {
			
   			logger.info("Update Member Start" + member.toString());
   			MemberMapper mapper = sqlsession.getMapper(MemberMapper.class);
   			int cnt = 0;
   			try{
   				cnt = mapper.updateMember(member);
   				logger.info("Update Member Result : " + cnt);
	   		}catch(Exception e) {
				e.printStackTrace();
			}if(cnt == 1) {
				logger.info("Update Member Success");
				return true;
			}else {
				logger.info("Update Member Fail");
				return false;
			}
			
		}
		
		/*
		 * 회원정보 하나 불러오기
		 * */
		public Member getMember(String custid) {
			logger.info("회원 정보 검색 시작");
			
			MemberMapper mapper = sqlsession.getMapper(MemberMapper.class);
			Member member = null;
			try{
				member = mapper.getMember(custid);
			}catch(Exception e){
				e.printStackTrace();
			}
			logger.info("회원 정보 검색 종료");
			
			return member;
		}

		/**
		 * 탈퇴 회원 확인
		 * @param userid
		 * @return
		 */
		public String checkStatus(String userid) {
			String status = null;
			try{
				MemberMapper mapper = sqlsession.getMapper(MemberMapper.class);
				status = mapper.checkStatus(userid);
			}catch(Exception e){
				e.printStackTrace();
			}
			return status;
		}

		
		


}