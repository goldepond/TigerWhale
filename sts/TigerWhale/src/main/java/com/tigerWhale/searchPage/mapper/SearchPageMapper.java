package com.tigerWhale.searchPage.mapper;

import java.util.ArrayList;

import com.tigerWhale.command.MainBoardVO;
import com.tigerWhale.util.SearchPageCriteria;

public interface SearchPageMapper {

	public ArrayList<MainBoardVO> getList(SearchPageCriteria cri);
	public int getTotal(SearchPageCriteria cri);
	
	
}
