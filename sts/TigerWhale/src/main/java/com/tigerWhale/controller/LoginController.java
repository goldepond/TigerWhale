package com.tigerWhale.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tigerWhale.users.service.UsersService;
import com.tigerWhale.command.UsersVO;

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
	
	//중복처리메서드
	@ResponseBody
	@PostMapping(value = "/idCheck", produces = "application/json")
	public int idCheck(@RequestBody UsersVO vo) {
		
		int result = usersService.idCheck(vo);
		
		return result;
	}
	
	//가입요청
	@RequestMapping(value = "/joinForm", method = RequestMethod.POST)
	public String joinForm(UsersVO vo, RedirectAttributes RA) {
		int result = usersService.join(vo);
		if(result==1) {//성공
			RA.addFlashAttribute("msg", "가입");
			return "redirect:/users/userLogin";
		} else { //실패
			RA.addFlashAttribute("msg", "가입실패");
			return "redirect:/users/userJoin";
		}
	}
	
	@RequestMapping(value = "/loginForm", method = RequestMethod.POST)
	public ModelAndView loginForm(UsersVO vo) {
		
		UsersVO usersVO = usersService.login(vo);
		
		ModelAndView mv = new ModelAndView();
		
		if(usersVO != null) { //로그인 성공
			mv.addObject("login", usersVO);
		} else { //로그인 실패
			mv.addObject("msg", "아이디와 비밀번호를 확인하세요");
		}
		return mv; //디스패쳐 서블릿으로 반환
	}
	
	@RequestMapping("/userLogout")
	public String userLogout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
}
