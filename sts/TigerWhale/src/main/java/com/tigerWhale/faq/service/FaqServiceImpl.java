package com.tigerWhale.faq.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tigerWhale.command.FaqVO;
import com.tigerWhale.faq.mapper.FaqMapper;
import com.tigerWhale.util.Criteria;


@Service("faqService") //componentscan
public class FaqServiceImpl implements FaqService{

	@Autowired
	private FaqMapper faqMapper;
	
	@Override
	public int regist(FaqVO vo) {
		return faqMapper.regist(vo);
	}

	@Override
	public ArrayList<FaqVO> getList(Criteria cri) {
	
//		System.out.println("fucking");
//		System.out.println(faqMapper.getList(cri));		
		return faqMapper.getList(cri);
	}

	@Override
	public FaqVO getDetail(int bno) {
		return faqMapper.getDetail(bno);
	}

	@Override
	public int update(FaqVO vo) {
		return faqMapper.update(vo);
	}

	@Override
	public int delete(int bno) {
		return faqMapper.delete(bno);
	}

	@Override
	public int getTotal(Criteria cri) {
		
		return faqMapper.getTotal(cri);
	}

}





