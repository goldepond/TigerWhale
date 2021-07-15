package com.tigerWhale.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tigerWhale.command.FaqVO;
import com.tigerWhale.faq.service.FaqService;
import com.tigerWhale.util.Criteria;
import com.tigerWhale.util.PageVO;

@Controller
@RequestMapping("/faqBoard")
public class FaqController 
{
	
	@Autowired
	@Qualifier("faqService")
	private FaqService faqService;
	
	
	@RequestMapping("/faqList")
	public String faqList(Model model, Criteria cri)
	{
		
		ArrayList<FaqVO> list = faqService.getList(cri);
		int total = faqService.getTotal(cri);
		PageVO pageVO = new PageVO(cri, total); //(기준, 토탈)
		
//		System.out.println(cri.toString());
//		System.out.println("컨");
//		System.out.println(pageVO.toString());
		
		System.out.println(model.addAttribute("list", list)); //test
		model.addAttribute("pageVO", pageVO); //페이지네이션전달		
		model.addAttribute("list", list); //게시글전달
		System.out.println(model.addAttribute("list", list)); //test		
		
		
		
		
		
		return "faqBoard/faqList";
	}

	//등록화면
	@RequestMapping("/faqRegist")
	public String faqRegist() {
		return "faqBoard/faqRegist";
	}
	
	
	//상세화면과 변경화면은 내용이 동일하기 때문에 하나로 묶어서 사용
	@RequestMapping({"/faqDetail", "/faqModify"})
	public void getDetail(@RequestParam("bno") int bno, 
						  Model model) {
		
		FaqVO boardVO = faqService.getDetail(bno);
		model.addAttribute("boardVO", boardVO);
		
	}
	
	//등록요청
	@RequestMapping("/registForm")
	public String registForm(FaqVO vo,
							 RedirectAttributes RA) {
		
		
		int result = faqService.regist(vo); //성공시 1반환, 실패시 0
		
		if(result == 1) {
			RA.addFlashAttribute("msg", "등록 처리 되었습니다");
		} else {
			RA.addFlashAttribute("msg", "등록에 실패했습니다. 다시 시도하세요");
		}
		
		return "redirect:/faqBoard/faqList"; //다시컨트롤러를 태움
	}
	
	//글 업데이트 처리
	@RequestMapping("/faqUpdate")
	public String faqUpdate(FaqVO vo,
							 RedirectAttributes RA) {
		
		int result = faqService.update(vo);
		
		if(result == 1) {
			RA.addFlashAttribute("msg", "정상 수정되었습니다");
		} else {
			RA.addFlashAttribute("msg", "수정에 실패했습니다. 다시 시도 하세요");
		}
		
		return "redirect:/faqBoard/faqList";
	}
	
	//글 삭제
	@RequestMapping("/faqDelete")
	public String faqDelete(@RequestParam("bno") int bno,
							 RedirectAttributes RA) {
		
		
		int result = faqService.delete(bno);
		
		if(result == 1) {
			RA.addFlashAttribute("msg", "삭제 되었습니다");
		} else {
			RA.addFlashAttribute("msg", "삭제에 실패했습니다. 다시 시도 하세요");
		}
		
		
		return "redirect:/faqBoard/faqList";
	}
	
	
	
	/*
	 * @RequestMapping("/faqDetail") public String faqDetail() {
	 * System.out.println("===================================");
	 * 
	 * return "faqBoard/faqDetail";
	 * 
	 * }
	 * 
	 * 
	 * @RequestMapping("/faqRegist") public String faqRegist() { return
	 * "faqBoard/faqRegist"; }
	 * 
	 * @RequestMapping("/faqModify") public String faqUpdate() { return
	 * "faqBoard/faqModify"; }
	 */
}
