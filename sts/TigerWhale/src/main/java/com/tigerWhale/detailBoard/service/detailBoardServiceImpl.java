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
		System.out.println(" 여기까지 성공11111111111111111111111");
		System.out.println(id);
		System.out.println(detailBoardMapper);
		System.out.println(detailBoardMapper.getUserDetail(id));
		return detailBoardMapper.getUserDetail(id);
	}

	


}
