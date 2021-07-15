package com.tigerWhale.searchPage.service;

import java.util.ArrayList;

import com.tigerWhale.command.MainBoardVO;
import com.tigerWhale.util.SearchPageCriteria;

public interface SearchPageService {

	public ArrayList<MainBoardVO> getList(SearchPageCriteria cri);
	public int getTotal(SearchPageCriteria cri);
	
}
