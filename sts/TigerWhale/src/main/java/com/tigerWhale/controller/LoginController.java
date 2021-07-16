package com.tigerWhale.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tigerWhale.command.UsersVO;
import com.tigerWhale.users.service.UsersService;

@Controller
@RequestMapping("/users/*")
public class LoginController {
	@Autowired
	@Qualifier("usersService")
	private UsersService usersService;
	//가입화면
	@RequestMapping("/userJoin")
	public String userJoin() {
		return "users/userJoin";
	}
	
	//로그인화면
	@RequestMapping("/userLogin")
	public String userLogin() {
		return "users/login";
	}
	
	//마이페이지화면
	@RequestMapping("/userMypage")
	public String userMypage(HttpSession session, Model model) {
		
		UsersVO vo = (UsersVO) session.getAttribute("usersVO");
		String user_ID = vo.getUser_ID();
		
		UsersVO userInfo = usersService.getInfo(user_ID);
		model.addAttribute("userInfo", userInfo);
			return "mypage/mypage";
	}
	
	//로그인
	@RequestMapping(value = "/loginForm", method = RequestMethod.POST)
	public ModelAndView loginForm(UsersVO vo) {
		System.out.println("1");
		UsersVO usersVO = usersService.login(vo);
		ModelAndView mv = new ModelAndView();
		System.out.println(usersVO);
		if(usersVO != null) { //로그인 성공
			mv.addObject("login", usersVO);
			System.out.println("success");
		} else { //로그인 실패
			mv.addObject("msg", "아이디와 비밀번호를 확인하세요");
			System.out.println("fail");
		}
		System.out.println("mv");
		return mv; //디스패쳐 서블릿으로 반환
	}
	
	@RequestMapping("/userLogout")
	public String userLogout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
}
