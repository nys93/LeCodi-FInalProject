package com.lecodi.foru.mapper;

import com.lecodi.foru.vo.Member;

public interface MemberMapper {
	
	// 회원 가입
	int insertMember(Member join);
	
	// 로그인
	String login(String userid);

	Member checkDuplicate(String userid);

	void verifyMember(Member member);

	int updateMember(Member member);

	Member getMember(String custid);

	// 
	/*Member checkDuplicate(Member member);*/
	
	String checkStatus(String userid);


}
