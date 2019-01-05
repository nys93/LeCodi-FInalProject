package com.lecodi.foru.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lecodi.foru.dao.MemberDAO;
import com.lecodi.foru.vo.Member;

/*@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public int checkDuplicate(Member member){
		System.out.println("서비스에 들어옴");
		int rowcount = memberDAO.checkDuplicate(member);
		System.out.println("서비스에서 나감");
		return rowcount;
	}
	

}*/
