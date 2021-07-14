package com.tigerWhale.detailBoard.service;

import java.util.ArrayList;

import com.tigerWhale.command.D_T_boardVO;
import com.tigerWhale.command.IMGBoardVO;
import com.tigerWhale.command.MainBoardVO;
import com.tigerWhale.command.UserIMGBoardVO;
import com.tigerWhale.command.UsersVO;
import com.tigerWhale.command.Y_M_boardVO;
import com.tigerWhale.command.catagoryBoardVO;
import com.tigerWhale.command.detailBoardVO;
import com.tigerWhale.command.replyBoardVO;
import com.tigerWhale.command.textBoardVO;


public interface detailBoardService {
	public catagoryBoardVO getcatagory(int bno);
	public ArrayList<D_T_boardVO> getD_T_board(int bno);
	public ArrayList<detailBoardVO> getBoardDetail(int bno);
	public MainBoardVO getMainDetail(int bno);
	public ArrayList<replyBoardVO> getrepyBoard(int bno);
	public UsersVO getUserDetail(String id);
	public ArrayList<Y_M_boardVO> getY_M_board(int bno);
	public ArrayList<IMGBoardVO> getIMGBoard(int bno);
	public UserIMGBoardVO getUserIMGBoard(int bno);
	public textBoardVO getTextBoard(int bno);
	
	public ArrayList<Y_M_boardVO> getY_M_boardFisrt(int bno);

}

