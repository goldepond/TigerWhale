package com.tigerWhale.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tigerWhale.command.UsersVO;
import com.tigerWhale.detailBoard.service.detailBoardService;

@Controller
@RequestMapping("/detailBoard")
public class detailBoardController {
	
	@Autowired
	@Qualifier("detailBoardService")
	private detailBoardService detailBoardService;
	
	
	@RequestMapping("/detailPage")
	public String detailPage(Model model) {
		String user_ID = "ID_1";
		UsersVO usersVO = detailBoardService.getUserDetail(user_ID);
		System.out.println(usersVO);
//		model.addAttribute("vo", usersVO);
		return "detailBoard/detailPage";
	}
	
	@RequestMapping("/detailBuy")
	public String detailBuy() {
		return "detailBoard/detailBuy";
	}
	
	@RequestMapping("/detailWrite")
	public String detailWrite() {
		return "detailBoard/detailWrite";
	}
	
	
}
