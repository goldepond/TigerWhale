package com.tigerWhale.mainBoard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tigerWhale.command.MainBoardVO;
import com.tigerWhale.command.UsersVO;
import com.tigerWhale.mainBoard.mapper.MainBoardMapper;

@Service("mainBoardService")
public class MainBoardServiceImp implements MainBoardService {

	@Autowired
	private MainBoardMapper mainBoardMapper;
	
	@Override
	public ArrayList<MainBoardVO> getPopularPage() {
		
		System.out.println(mainBoardMapper.getPopularPage());
		return mainBoardMapper.getPopularPage();
	}

	@Override
	public ArrayList<MainBoardVO> getRecentBoard() {
		System.out.println(mainBoardMapper.getRecentBoard());
		return mainBoardMapper.getRecentBoard();
	}

	@Override
	public ArrayList<MainBoardVO> getBestBoard() {
		
		System.out.println(mainBoardMapper.getBestBoard());
		return mainBoardMapper.getBestBoard();
	}

	@Override
	public ArrayList<MainBoardVO> getNearBoard(UsersVO vo) {
		System.out.println("-=-------"); 
		System.out.println(vo.getLa());
		System.out.println(vo.getMa());
		System.out.println(vo);
		System.out.println(mainBoardMapper.getNearBoard(vo));
		System.out.println("-=-------");
		return mainBoardMapper.getNearBoard(vo);
	}

}
