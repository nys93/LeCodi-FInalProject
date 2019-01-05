package com.lecodi.foru.dao;

import java.io.UnsupportedEncodingException;

import javax.activation.DataSource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class MailHandler {

	JavaMailSender mailSender;
	MimeMessage message;
	MimeMessageHelper messageHelper;
	
	public MailHandler(JavaMailSender mailSender) throws MessagingException{
		this.mailSender = mailSender;
        message = this.mailSender.createMimeMessage();
        messageHelper = new MimeMessageHelper(message, true, "UTF-8");
    }
	
	  public void setSubject(String subject) throws MessagingException {
	        messageHelper.setSubject(subject);		// 메일 제목
	    }
	    public void setText(String htmlContent) throws MessagingException {
	        messageHelper.setText(htmlContent, true);		// 메일 내용(링크를 적어서 보내줌)
	    }
	    public void setFrom(String email, String name) throws UnsupportedEncodingException, MessagingException {
	        messageHelper.setFrom(email, name);		// 보내는사람
	    }
	    public void setTo(String email) throws MessagingException {
	        messageHelper.setTo(email);				// 받는 회원
	    }
	    public void addInline(String contentId, DataSource dataSource) throws MessagingException {
	        messageHelper.addInline(contentId, dataSource);
	    }
	    public void send() {
	        mailSender.send(message);				// 메세지를 보내주는 역할
	    }
}
