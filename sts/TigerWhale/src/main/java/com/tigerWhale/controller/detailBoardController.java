package com.tigerWhale.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mypage")
public class detailBoardController {
	
	@RequestMapping("/mypage")
	public String myPage() {
		return "mypage/mypage";
	}
	
	@RequestMapping("/mypage-email")
	public String mypageEmail() {
		return "mypage/mypage-email";
	}
	
	@RequestMapping("/mypage-name")
	public String mypageName() {
		return "mypage/mypage-name";
	}
	
	@RequestMapping("/mypage-password")
	public String mypagePassword() {
		return "mypage/mypage-password";
	}
	
	@RequestMapping("/mypage-phone")
	public String mypagePhone() {
		return "mypage/mypage-phone";
	}
	
	
}
