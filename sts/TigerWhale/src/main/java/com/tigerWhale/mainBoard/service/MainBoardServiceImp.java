package com.tigerWhale.mainBoard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tigerWhale.command.MainBoardVO;
import com.tigerWhale.command.PopularBoardVO;
import com.tigerWhale.mainBoard.mapper.MainBoardMapper;

@Service("mainBoardService")
public class MainBoardServiceImp implements MainBoardService {

	@Autowired
	private MainBoardMapper mainBoardMapper;
	
	@Override
	public ArrayList<MainBoardVO> getPopularPage() {
		
		
		return mainBoardMapper.getPopularPage();
	}

	@Override
	public ArrayList<MainBoardVO> getRecentBoard() {
		return mainBoardMapper.getRecentBoard();
	}

	@Override
	public ArrayList<MainBoardVO> getBestBoard() {
		
		System.out.println(mainBoardMapper.getBestBoard());
		return mainBoardMapper.getRecentBoard();
	}

}
