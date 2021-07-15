package com.tigerWhale.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tigerWhale.command.MainBoardVO;
import com.tigerWhale.command.CategoryBoardVO;
import com.tigerWhale.searchPage.service.SearchPageService;
import com.tigerWhale.util.SearchPageCriteria;
import com.tigerWhale.util.SearchPagePageVO;

@Controller
public class SearchPageController {
	
	@Autowired
	@Qualifier("searchPageService")
	private SearchPageService searchPageService;
	
	@RequestMapping("/searchPage")
	public String searchPage(Model model) {
		
		System.out.println("서치페이지 컨트롤러 통과");
		
		SearchPageCriteria cri = new SearchPageCriteria();
		cri.setC_code(51);
		
		ArrayList<MainBoardVO> list = searchPageService.getList(cri);
		int total = searchPageService.getTotal(cri);
		SearchPagePageVO pageVO = new SearchPagePageVO(cri, total);
		
		model.addAttribute("searchPagePageVO", pageVO); // 페이지네이션
		model.addAttribute("searchPageList", list); // 검색된 게시물 리스트
		
		System.out.println(pageVO.getCri().getC_code());
		System.out.println("정상처리");
		
		return "searchPage";
	}
}
