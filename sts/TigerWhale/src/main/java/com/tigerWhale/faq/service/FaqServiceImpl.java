package com.tigerWhale.faq.service;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tigerWhale.command.FaqVO;
import com.tigerWhale.faq.mapper.FaqMapper;
import com.tigerWhale.util.Criteria;

@Service("faqService") // componentscan
public class FaqServiceImpl implements FaqService {

	@Autowired
	private FaqMapper faqMapper;

	@Override
	public int regist(FaqVO vo) {
		return faqMapper.regist(vo);
	}

	@Override
	public ArrayList<FaqVO> getList(Criteria cri) {
		// 퍼블릭은 그냥 퍼블릭이고
		// ArrayList은 형형.
		// Criteria()는

		// Criteria cafe = new Criteria(); 이거랑 getList(Criteria cri)는 같은맥락이다
		
		Date now = new Date();
		int Day = 1440;
        
		ArrayList<FaqVO> cafeList = faqMapper.getList(cri);
		for(FaqVO vo : cafeList){	//변수창 보면 name[0]번에 Value로 FaqVO가 들어있음. 
			
			long calDate = now.getTime() - vo.getRegdate().getTime();
			long min = calDate / 60000;
			
			if(min <= 60) {
				vo.setTimetotext(String.valueOf(min + "분 전"));
			} else if(min < 1440){
				vo.setTimetotext(String.valueOf((min / 60) + "시간 전쯤"));
			} else {
				vo.setTimetotext(vo.getRegdate().toString());
			}
		}

		// VO형의 cafe변수를 만드럿고 리턴하는걸 잡아왔다
//		for(int i = 0; i < cafe.size(); i++) {
//			System.out.println(cafe.get(i));
//		}
		
		return cafeList;
//		return faqMapper.getList(cri);
	}
	//디버그를 걸고 F8을 누르면서 변수값에 뭐가들었는지 본다.

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
