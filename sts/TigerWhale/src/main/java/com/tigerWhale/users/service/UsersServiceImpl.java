package com.tigerWhale.users.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tigerWhale.users.mapper.UsersMapper;
import com.tigerWhale.command.UsersVO;

@Service("usersService")
public class UsersServiceImpl implements UsersService {

	@Autowired
	private UsersMapper usersMapper;
	
	@Override
	public int idCheck(UsersVO vo) {
		return usersMapper.idCheck(vo);
	}

	@Override
	public int join(UsersVO vo) {
		return usersMapper.join(vo);
	}

	@Override
	public UsersVO login(UsersVO vo) {
		return usersMapper.login(vo);
	}

	@Override
	public UsersVO getInfo(String user_ID) {
		return usersMapper.getInfo(user_ID);
	}

}
