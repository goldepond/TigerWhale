package com.tigerWhale.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/faqBoard")
public class faqBoardControllier 
{
	@RequestMapping("/faqDetail")
	public String faqDetail()
	{
		System.out.println("===================================");
		return "faqBoard/faqDetail";
	}
	
	@RequestMapping("/faqList")
	public String faqList()
	{
		return "faqBoard/faqList";
	}
	
	@RequestMapping("/faqRegist")
	public String faqRegist()
	{
		return "faqBoard/faqRegist";
	}
	
	@RequestMapping("/faqModify")
	public String faqModify()
	{
		return "faqBoard/faqModify";
	}
}
