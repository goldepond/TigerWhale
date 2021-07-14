package com.tigerWhale.reply.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.tigerWhale.command.replyBoardVO;
import com.tigerWhale.util.Criteria;

public interface ReplyService {
	public int regist(replyBoardVO vo);
	public ArrayList<replyBoardVO> getList(@Param("bno") int bno, @Param("cri") Criteria cri);
	public int getTotal(int bno); //전체댓글 수
	
	public int pwCheck(replyBoardVO vo);  //비밀번호 확인
	public int update(replyBoardVO vo); //수정
	public int delete(replyBoardVO vo);

}
