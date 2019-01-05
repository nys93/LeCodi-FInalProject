package com.lecodi.foru.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("codi")
public class CodiController {
	
	/**
	 * 코디 툴 페이지 이동
	 */
	public String codiPage(){
		return "codi/codiTool";
	}
	
	
	/**
	 * 이미지 업로드 페이지 소환
	 */
	public String imageUpload(){
		return "upload";
	}

}
