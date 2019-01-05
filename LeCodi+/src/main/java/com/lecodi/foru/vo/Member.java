package com.lecodi.foru.vo;

public class Member {				//회원
	
	private String userid;			//아이디
	private String password;		//비밀번호
	private String name;			//이름
	private String birth;			//생년월일
	private String phonenumber1;	//폰번호1
	private String phonenumber2;	//폰번호2
	private String phonenumber3;	//폰번호3
	private int postcode;			//우편번호
	private String address_primary;	//기본주소
	private String address_detail;	//상세주소
	private String email_id;		//이메일
	private String email_domain;	//이메일 도메인
	private char m_verify;			//이메일 인증확인
	private String status;
	
	public Member() {
	}

	public Member(String userid, String password, String name, String birth, String phonenumber1, String phonenumber2,
			String phonenumber3, int postcode, String address_primary, String address_detail, String email_id,
			String email_domain, char m_verify, String status) {
		this.userid = userid;
		this.password = password;
		this.name = name;
		this.birth = birth;
		this.phonenumber1 = phonenumber1;
		this.phonenumber2 = phonenumber2;
		this.phonenumber3 = phonenumber3;
		this.postcode = postcode;
		this.address_primary = address_primary;
		this.address_detail = address_detail;
		this.email_id = email_id;
		this.email_domain = email_domain;
		this.m_verify = m_verify;
		this.status = status;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getPhonenumber1() {
		return phonenumber1;
	}

	public void setPhonenumber1(String phonenumber1) {
		this.phonenumber1 = phonenumber1;
	}

	public String getPhonenumber2() {
		return phonenumber2;
	}

	public void setPhonenumber2(String phonenumber2) {
		this.phonenumber2 = phonenumber2;
	}

	public String getPhonenumber3() {
		return phonenumber3;
	}

	public void setPhonenumber3(String phonenumber3) {
		this.phonenumber3 = phonenumber3;
	}

	public int getPostcode() {
		return postcode;
	}

	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}

	public String getAddress_primary() {
		return address_primary;
	}

	public void setAddress_primary(String address_primary) {
		this.address_primary = address_primary;
	}

	public String getAddress_detail() {
		return address_detail;
	}

	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getEmail_domain() {
		return email_domain;
	}

	public void setEmail_domain(String email_domain) {
		this.email_domain = email_domain;
	}

	public char getM_verify() {
		return m_verify;
	}

	public void setM_verify(char m_verify) {
		this.m_verify = m_verify;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Member [userid=" + userid + ", password=" + password + ", name=" + name + ", birth=" + birth
				+ ", phonenumber1=" + phonenumber1 + ", phonenumber2=" + phonenumber2 + ", phonenumber3=" + phonenumber3
				+ ", postcode=" + postcode + ", address_primary=" + address_primary + ", address_detail="
				+ address_detail + ", email_id=" + email_id + ", email_domain=" + email_domain + ", m_verify="
				+ m_verify + "]";
	}
	
}
