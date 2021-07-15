package com.tigerWhale.faq.service;

import java.util.ArrayList;

import com.tigerWhale.command.FaqVO;
import com.tigerWhale.util.Criteria;


public interface FaqService {

	public int regist(FaqVO vo); //등록
	public int getTotal(Criteria cri); //전체게시글 수
	public ArrayList<FaqVO> getList(Criteria cri);
//	public ArrayList<FaqVO> getList(); //조회
	
	
	public FaqVO getDetail(int bno); //상세
	public int update(FaqVO vo); //수정
	public int delete(int bno); //삭제
	
}
