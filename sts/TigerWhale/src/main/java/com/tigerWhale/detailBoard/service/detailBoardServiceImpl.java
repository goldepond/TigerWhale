package com.tigerWhale.detailBoard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tigerWhale.command.D_T_boardVO;
import com.tigerWhale.command.IMGBoardVO;
import com.tigerWhale.command.MainBoardVO;
import com.tigerWhale.command.UserIMGBoardVO;
import com.tigerWhale.command.UsersVO;
import com.tigerWhale.command.Y_M_boardVO;
import com.tigerWhale.command.catagoryBoardVO;
import com.tigerWhale.command.detailBoardVO;
import com.tigerWhale.command.repyBoardVO;
import com.tigerWhale.command.textBoardVO;
import com.tigerWhale.detailBoard.mapper.detailBoardMapper;

@Service("detailBoardService") // componentscan
public class detailBoardServiceImpl implements detailBoardService {

	@Autowired
	private detailBoardMapper detailBoardMapper;

	@Override
	public catagoryBoardVO getcatagory(int bno) {
		// TODO Auto-generated method stub
		return detailBoardMapper.getcatagory(bno);
	}

	@Override
	public ArrayList<D_T_boardVO> getD_T_board(int bno) {
		return detailBoardMapper.getD_T_board(bno);
	}

	@Override
	public ArrayList<detailBoardVO> getBoardDetail(int bno) {
		// TODO Auto-generated method stub
		return detailBoardMapper.getBoardDetail(bno);
	}

	@Override
	public MainBoardVO getMainDetail(int bno) {
		// TODO Auto-generated method stub
		return detailBoardMapper.getMainDetail(bno);
	}

	@Override
	public ArrayList<repyBoardVO> getrepyBoard(int bno) {
		return detailBoardMapper.getrepyBoard(bno);
	}

	@Override
	public UsersVO getUserDetail(String id) {
		// TODO Auto-generated method stub
		return detailBoardMapper.getUserDetail(id);
	}

	@Override
	public ArrayList<Y_M_boardVO> getY_M_board(int bno) {
		return detailBoardMapper.getY_M_board(bno);
	}

	@Override
	public ArrayList<IMGBoardVO> getIMGBoard(int bno) {
		System.out.println(detailBoardMapper.getIMGBoard(bno));
		return detailBoardMapper.getIMGBoard(bno);
	}

	@Override
	public UserIMGBoardVO getUserIMGBoard(int bno) {
		// TODO Auto-generated method stub
		return detailBoardMapper.getUserIMGBoard(bno);
	}

	@Override
	public textBoardVO getTextBoard(int bno) {
		// TODO Auto-generated method stub
		return detailBoardMapper.getTextBoard(bno);
	}

}
