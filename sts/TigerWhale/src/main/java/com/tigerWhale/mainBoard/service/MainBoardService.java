package com.tigerWhale.mainBoard.service;

import java.util.ArrayList;

import com.tigerWhale.command.MainBoardVO;
import com.tigerWhale.command.PopularBoardVO;

public interface MainBoardService 
{
	public ArrayList<MainBoardVO> getPopularPage();
	public ArrayList<MainBoardVO> getRecentBoard();
	public ArrayList<MainBoardVO> getBestBoard();
}
