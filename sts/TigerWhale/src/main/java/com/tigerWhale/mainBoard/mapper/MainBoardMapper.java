package com.tigerWhale.mainBoard.mapper;

import java.util.ArrayList;

import com.tigerWhale.command.MainBoardVO;
import com.tigerWhale.command.PopularBoardVO;

public interface MainBoardMapper 
{
	public ArrayList<MainBoardVO> getPopularPage();
	public ArrayList<MainBoardVO> getRecentBoard();
	public ArrayList<MainBoardVO> getBestBoard();
}
