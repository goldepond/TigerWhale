package com.tigerWhale.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tigerWhale.command.UsersVO;
import com.tigerWhale.users.service.UsersService;

@Controller
@RequestMapping("/mypage")

public class MypageController {
	@Autowired
	@Qualifier("usersService")
	private UsersService usersService;
	
	@RequestMapping("/mypage")
	public String userMypage(HttpSession session, Model model) {
		
		UsersVO vo = (UsersVO) session.getAttribute("usersVO");
		String user_ID = vo.getUser_ID();
		
		UsersVO userInfo = usersService.getInfo(user_ID);
		model.addAttribute("userInfo", userInfo);
			return "mypage/mypage";
	}
	
	@RequestMapping("/mypage-email")
	public String userMypageEmail(HttpSession session, Model model) {
		
		UsersVO vo = (UsersVO) session.getAttribute("usersVO");
		String userEmail1 = vo.getUserEmail1();
		
		UsersVO userInfo = usersService.getInfo(userEmail1);
		model.addAttribute("userInfo", userInfo);
		return "mypage/mypage-email";
	}
	
	@RequestMapping("/mypage-password")
	public String userMypagePW(HttpSession session, Model model) {
		
		UsersVO vo = (UsersVO) session.getAttribute("usersVO");
		String user_PW = vo.getUser_PW();
		
		UsersVO userInfo = usersService.getInfo(user_PW);
		model.addAttribute("userInfo", userInfo);
		return "mypage/mypage-password";
	}
	
	@RequestMapping("/mypage-phone")
	public String userMypagePhoneNum(HttpSession session, Model model) {
		
		UsersVO vo = (UsersVO) session.getAttribute("usersVO");
		String userPhoneNumber = vo.getUserPhoneNumber();
		
		UsersVO userInfo = usersService.getInfo(userPhoneNumber);
		model.addAttribute("userInfo", userInfo);
		return "mypage/mypage-phone";
	}
	
	@RequestMapping("/mypageModify")
	public String userMypageModify(HttpSession session) {
		
		return "mypage/mypageModify";
	}
	
	
}
