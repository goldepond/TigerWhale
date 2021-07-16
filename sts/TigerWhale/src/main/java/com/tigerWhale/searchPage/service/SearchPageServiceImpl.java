package com.tigerWhale.searchPage.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tigerWhale.command.MainBoardVO;
import com.tigerWhale.searchPage.mapper.SearchPageMapper;
import com.tigerWhale.util.SearchPageCriteria;

@Service("searchPageService")
public class SearchPageServiceImpl implements SearchPageService {

	@Autowired
	private SearchPageMapper searchPageMapper;
	
	@Override
	public ArrayList<MainBoardVO> getList(SearchPageCriteria cri) {
		
		System.out.println("서비스임플 통과");
		
		return searchPageMapper.getList(cri);
	}

	@Override
	public int getTotal(SearchPageCriteria cri) {
		return searchPageMapper.getTotal(cri);
	}

}
