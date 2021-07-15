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
import com.tigerWhale.command.CategoryBoardVO;
import com.tigerWhale.command.DetailBoardVO;
import com.tigerWhale.command.ReplyBoardVO;
import com.tigerWhale.command.TextBoardVO;
import com.tigerWhale.detailBoard.mapper.DetailBoardMapper;

@Service("detailBoardService") // componentscan
public class DetailBoardServiceImpl implements DetailBoardService {

	@Autowired
	private DetailBoardMapper detailBoardMapper;

	@Override
	public CategoryBoardVO getCategory(int bno) {
		// TODO Auto-generated method stub
		return detailBoardMapper.getCategory(bno);
	}

	@Override
	public ArrayList<D_T_boardVO> getD_T_board(int bno) {
		return detailBoardMapper.getD_T_board(bno);
	}

	@Override
	public ArrayList<DetailBoardVO> getBoardDetail(int bno) {
		// TODO Auto-generated method stub
		return detailBoardMapper.getBoardDetail(bno);
	}

	@Override
	public MainBoardVO getMainDetail(int bno) {
		// TODO Auto-generated method stub
		return detailBoardMapper.getMainDetail(bno);
	}

	@Override
	public ArrayList<ReplyBoardVO> getReplyBoard(int bno) {
		return detailBoardMapper.getReplyBoard(bno);
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
		return detailBoardMapper.getIMGBoard(bno);
	}

	@Override
	public UserIMGBoardVO getUserIMGBoard(int bno) {
		// TODO Auto-generated method stub
		return detailBoardMapper.getUserIMGBoard(bno);
	}

	@Override
	public TextBoardVO getTextBoard(int bno) {
		// TODO Auto-generated method stub
		return detailBoardMapper.getTextBoard(bno);
	}

	@Override
	public ArrayList<Y_M_boardVO> getY_M_boardFisrt(int bno) {
		// TODO Auto-generated method stub
		return detailBoardMapper.getY_M_boardFisrt(bno);
	}

}
