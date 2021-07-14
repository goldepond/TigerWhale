package com.tigerWhale.reply.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tigerWhale.command.replyBoardVO;
import com.tigerWhale.reply.mapper.ReplyMapper;
import com.tigerWhale.util.Criteria;

@Service("replyService") 
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyMapper replymapper;
	@Override
	public int regist(replyBoardVO vo) {
		return replymapper.regist(vo);
	}

	@Override
	public ArrayList<replyBoardVO> getList(int bno, Criteria cri) {
		// TODO Auto-generated method stub
		return replymapper.getList(bno, cri);
	}

	@Override
	public int getTotal(int bno) {
		// TODO Auto-generated method stub
		return replymapper.getTotal(bno);
	}

	@Override
	public int pwCheck(replyBoardVO vo) {
		// TODO Auto-generated method stub
		return replymapper.pwCheck(vo);
	}

	@Override
	public int update(replyBoardVO vo) {
		// TODO Auto-generated method stub
		return replymapper.update(vo);
	}

	@Override
	public int delete(replyBoardVO vo) {
		// TODO Auto-generated method stub
		return replymapper.delete(vo);
	}

}
