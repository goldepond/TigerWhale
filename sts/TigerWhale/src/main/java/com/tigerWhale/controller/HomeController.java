package com.tigerWhale.controller;

import java.security.spec.ECPrivateKeySpec;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.AutoMappingUnknownColumnBehavior;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tigerWhale.command.MainBoardVO;
import com.tigerWhale.command.PopularBoardVO;
import com.tigerWhale.command.UsersVO;
import com.tigerWhale.mainBoard.service.MainBoardService;


@Controller
public class HomeController {
	
	@Autowired
	@Qualifier("mainBoardService")
	private MainBoardService mainBoardService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		return "views/mainPage";
		return "mainPage";
	}
	
	@ResponseBody
	@PostMapping(value = "/getPopularPage", produces = "application/json", consumes = "application/json")
	public ArrayList<MainBoardVO> getPopularPage()
	{
	
		ArrayList<MainBoardVO> vo = mainBoardService.getPopularPage();
		return vo;
	}
	
	@ResponseBody
	@PostMapping(value = "/getRecentBoard", produces = "application/json", consumes = "application/json")
	public ArrayList<MainBoardVO> getRecentBoard(@RequestBody String a)
	{
		ArrayList<MainBoardVO> vo = mainBoardService.getRecentBoard();
		return vo;
	}
	
	@ResponseBody
	@PostMapping(value = "/getBestBoard", consumes = "application/json")
	public ArrayList<MainBoardVO> getRecentBoard(Model model)
	{
		ArrayList<MainBoardVO> vo = mainBoardService.getBestBoard();
		model.addAttribute("RecentBoard", vo);
		return vo;
	}
	
	@ResponseBody
	@PostMapping(value = "/getNearBoard", produces = "application/json", consumes = "application/json")
	public ArrayList<MainBoardVO> getNearBoard(@RequestBody UsersVO vo)
	{
		System.out.println("@@!#!#!@#");
		System.out.println(vo);
		
		ArrayList<MainBoardVO> vo2 = mainBoardService.getNearBoard(vo);
		return vo2;
	}
}
