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
@RequestMapping("/detailBoard")
public class detailBoardController {
	
	@RequestMapping("/detailPage")
	public String detailPage() {
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
