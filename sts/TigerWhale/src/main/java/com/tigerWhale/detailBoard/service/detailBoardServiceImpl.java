package com.tigerWhale.detailBoard.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tigerWhale.command.UsersVO;
import com.tigerWhale.detailBoard.mapper.detailBoardMapper;

@Service("detailBoardService") //componentscan
public class detailBoardServiceImpl implements detailBoardService {

	@Autowired
	private detailBoardMapper detailBoardMapper;
	
	@Override
	public UsersVO getUserDetail(String id) {
		return detailBoardMapper.getUserDetail(id);
	}

	


}
