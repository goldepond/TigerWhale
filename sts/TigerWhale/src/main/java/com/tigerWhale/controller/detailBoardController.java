package com.tigerWhale.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
import com.tigerWhale.detailBoard.service.detailBoardService;

@Controller
@RequestMapping("/detailBoard")
public class detailBoardController {
	
	@Autowired
	@Qualifier("detailBoardService")
	private detailBoardService detailBoardService;
	
	
	@RequestMapping("/detailPage")
	public String detailPage(Model model) {
		int bno = 1;
		catagoryBoardVO catagoryBoardVO = detailBoardService.getcatagory(bno);
		ArrayList<D_T_boardVO> d_T_boardVO = detailBoardService.getD_T_board(bno);
		ArrayList<detailBoardVO> detiBoardVO = detailBoardService.getBoardDetail(bno);
		MainBoardVO mainBoardVO = detailBoardService.getMainDetail(bno);
		ArrayList<replyBoardVO> repyBoardVO = detailBoardService.getrepyBoard(bno);
		String user_ID = mainBoardVO.getUser_ID();
		UsersVO usersVO = detailBoardService.getUserDetail(user_ID);
		ArrayList<Y_M_boardVO> m_boardVO = detailBoardService.getY_M_board(bno);
		ArrayList<IMGBoardVO> IMGBoardVO = detailBoardService.getIMGBoard(bno);
		UserIMGBoardVO userIMGBoardVO = detailBoardService.getUserIMGBoard(bno);
		textBoardVO textBoardVO  = detailBoardService.getTextBoard(bno);
		
		ArrayList<Y_M_boardVO> m_boardVOFirst = detailBoardService.getY_M_boardFisrt(bno);
		
		System.out.println("###########################");
		System.out.println(m_boardVOFirst.size());
		System.out.println("###########################");
		
		model.addAttribute("m_boardVOFirst", m_boardVOFirst);
		
		model.addAttribute("d_T_boardVO", d_T_boardVO);
		model.addAttribute("detiBoardVO", detiBoardVO);
		model.addAttribute("mainBoardVO",mainBoardVO);
		model.addAttribute("repyBoardVO", repyBoardVO);
		model.addAttribute("catagoryBoardVO", catagoryBoardVO);
		model.addAttribute("usersVO", usersVO);
		model.addAttribute("m_boardVO", m_boardVO);
		model.addAttribute("IMGBoardVO", IMGBoardVO);
		model.addAttribute("textBoardVO", textBoardVO);
		model.addAttribute("userIMGBoardVO", userIMGBoardVO);
		return "detailBoard/detailPage";
	}
	
	@RequestMapping("/detailBuy")
	public String detailBuy(@RequestBody Y_M_boardVO vo) {
		System.out.println(vo.getBno());
		System.out.println(vo.getRno());
		return "detailBoard/detailBuy";
	}
	
	@RequestMapping("/detailWrite")
	public String detailWrite() {
		return "detailBoard/detailWrite";
	}
	
	
}
