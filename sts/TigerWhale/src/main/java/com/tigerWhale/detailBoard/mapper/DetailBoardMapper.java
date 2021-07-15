package com.tigerWhale.detailBoard.mapper;

import java.util.ArrayList;

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

public interface DetailBoardMapper {
	
	public CategoryBoardVO getCategory(int bno);
	public ArrayList<D_T_boardVO> getD_T_board(int bno);
	public ArrayList<DetailBoardVO> getBoardDetail(int bno);
	public MainBoardVO getMainDetail(int bno);
	public ArrayList<ReplyBoardVO> getReplyBoard(int bno);
	public UsersVO getUserDetail(String id);
	public ArrayList<Y_M_boardVO> getY_M_board(int bno);
	public ArrayList<IMGBoardVO> getIMGBoard(int bno);
	public UserIMGBoardVO getUserIMGBoard(int bno);
	public TextBoardVO getTextBoard(int bno);
	
	public ArrayList<Y_M_boardVO> getY_M_boardFisrt(int bno);
	
}
