package com.tigerWhale.controller;

import java.security.spec.ECPrivateKeySpec;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

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
	
		System.out.println("파풀러ㅍ파풀러");
		ArrayList<MainBoardVO> vo = mainBoardService.getPopularPage();
		System.out.println("인기컨트롤러");
		return vo;
	}
	
	@ResponseBody
	@PostMapping(value = "/getRecentBoard", produces = "application/json", consumes = "application/json")
	public ArrayList<MainBoardVO> getRecentBoard(@RequestBody String a)
	{
		System.out.println();
		ArrayList<MainBoardVO> vo = mainBoardService.getRecentBoard();
		System.out.println("최신컨트롤러");
		return vo;
	}
	
	@ResponseBody
	@PostMapping(value = "/getBestBoard", consumes = "application/json")
	public ArrayList<MainBoardVO> getRecentBoard(Model model)
	{
		System.out.println("컨트롤러탔음");
		ArrayList<MainBoardVO> vo = mainBoardService.getRecentBoard();
		model.addAttribute("RecentBoard", vo);
		System.out.println("베스트컨트롤러");
		return vo;
	}
}
