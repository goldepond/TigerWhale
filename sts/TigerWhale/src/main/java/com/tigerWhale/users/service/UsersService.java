package com.tigerWhale.users.service;

import com.tigerWhale.command.UsersVO;

public interface UsersService {
	
	public int idCheck(UsersVO vo);//중복체크
	public int join(UsersVO vo);//가입
	public UsersVO login(UsersVO vo);//로그인
	public UsersVO getInfo(String user_ID); //회원 정보

}
