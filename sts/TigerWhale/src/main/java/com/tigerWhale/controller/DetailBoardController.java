package com.tigerWhale.controller;

import java.io.File;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tigerWhale.command.D_T_boardVO;
import com.tigerWhale.command.IMGBoardVO;
import com.tigerWhale.command.MainBoardVO;
import com.tigerWhale.command.MultiUploadIMGVO;
import com.tigerWhale.command.MultipulD_TVO;
import com.tigerWhale.command.MultipulY_MVO;
import com.tigerWhale.command.UserIMGBoardVO;
import com.tigerWhale.command.UsersVO;
import com.tigerWhale.command.Y_M_boardVO;
import com.tigerWhale.command.APP_CONSTANT;
import com.tigerWhale.command.CategoryBoardVO;
import com.tigerWhale.command.DetailBoardVO;
import com.tigerWhale.command.ReplyBoardVO;
import com.tigerWhale.command.TextBoardVO;
import com.tigerWhale.command.UploadIMGVO;
import com.tigerWhale.detailBoard.service.DetailBoardService;

@Controller
@RequestMapping("/detailBoard")
public class DetailBoardController {
	
	@Autowired
	@Qualifier("detailBoardService")
	private DetailBoardService detailBoardService;
	
	
	
	
	

	
	
	
	@RequestMapping("/detailWrite")
	public String detailWrite(Model model) {
		ArrayList<CategoryBoardVO> categoryBoardVO = detailBoardService.getCataGoryALL();

		//전체 카테고리를 가져옴
		
		model.addAttribute("categoryBoardVO", categoryBoardVO);
		return "detailBoard/detailWrite";
		
		
	}
	
	@ResponseBody
	@PostMapping(value = "detailWriteUpdate", produces = "application/json")
	public ArrayList<CategoryBoardVO> detailWriteUpdate(@RequestBody CategoryBoardVO vo) {
		
		ArrayList<CategoryBoardVO> updateCategoryBoardVO  = detailBoardService.getMiddleCataGory(vo);
		System.out.println("바뀐값  " + updateCategoryBoardVO);
		return detailBoardService.getMiddleCataGory(vo);
	}
	
	
	
	
	
	
	@RequestMapping("/detailTerms")
	public String detailTerms() {
		return "detailBoard/detailTerms";
		
		
	}
	
	
	
	@RequestMapping("/detailPage")
	public String detailPage(Model model) {
		//@RequestParam( "bno") int bno ,
		int bno = 62;
		System.out.println(bno);

		
		
		ArrayList<DetailBoardVO> detiBoardVO = detailBoardService.getBoardDetail(bno);
		System.out.println("detiBoardVO  " + detiBoardVO);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@");
		
		MainBoardVO mainBoardVO = detailBoardService.getMainDetail(bno);
		System.out.println("mainBoardVO  " + mainBoardVO);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@");
		
		System.out.println(mainBoardVO.getC_code());
		CategoryBoardVO categoryBoardVO = detailBoardService.getCategory(mainBoardVO.getC_code());
		System.out.println("categoryBoardVO  " + categoryBoardVO);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@");
		
		ArrayList<ReplyBoardVO> repyBoardVO = detailBoardService.getReplyBoard(bno);
		System.out.println("repyBoardVO  " + repyBoardVO);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@");
		
		String user_ID = mainBoardVO.getUser_ID();
		System.out.println( " mainBoardVO  " + mainBoardVO);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@");
		
		UsersVO usersVO = detailBoardService.getUserDetail(user_ID);
		System.out.println("usersVO  " + usersVO);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@");
		
		ArrayList<Y_M_boardVO> m_boardVO = detailBoardService.getY_M_board(bno);
		System.out.println("m_boardVO  " + m_boardVO);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@");
		
		ArrayList<IMGBoardVO> IMGBoardVO = detailBoardService.getIMGBoard(bno);
		System.out.println("IMGBoardVO  " + IMGBoardVO);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@");
		
		UserIMGBoardVO userIMGBoardVO = detailBoardService.getUserIMGBoard(bno);
		System.out.println("userIMGBoardVO   " + userIMGBoardVO);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@");
		
		TextBoardVO textBoardVO  = detailBoardService.getTextBoard(bno);
		System.out.println("textBoardVO " + textBoardVO );
		System.out.println("@@@@@@@@@@@@@@@@@@@@@");
		
		
		ArrayList<Y_M_boardVO> m_boardVOFirst = detailBoardService.getY_M_boardFisrt(bno);
		System.out.println("m_boardVOFirst " + m_boardVOFirst);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@");
		
		File folder = new File(APP_CONSTANT.UPLOAD_PATH +"\\detailPageImg");
		String uploadPath = folder.getPath();
		
		model.addAttribute("m_boardVOFirst", m_boardVOFirst);
		model.addAttribute("detiBoardVO", detiBoardVO);
		model.addAttribute("mainBoardVO",mainBoardVO);
		model.addAttribute("replyBoardVO", repyBoardVO);
		model.addAttribute("categoryBoardVO", categoryBoardVO);
		model.addAttribute("usersVO", usersVO);
		model.addAttribute("m_boardVO", m_boardVO);
		model.addAttribute("IMGBoardVO", IMGBoardVO);
		model.addAttribute("textBoardVO", textBoardVO);
		model.addAttribute("userIMGBoardVO", userIMGBoardVO);
		return "detailBoard/detailPage";
	}
	
	@RequestMapping("/detailBuy")
	public String detailBuy(@RequestParam("bno") int bno,
			@RequestParam("rno") int rno , Model model) {
		System.out.println( rno);
		System.out.println( bno);
		
		Y_M_boardVO ymBoardVO = detailBoardService.getY_M_One(rno);
		System.out.println(ymBoardVO);
		model.addAttribute("ymBoardVO", ymBoardVO);
		return "detailBoard/detailBuy";
	}
	
	
	
	
	
	
	@RequestMapping("/detailInsert")
	public String detailWrite(
			 MultiUploadIMGVO imgvo,
			 MultipulY_MVO vo,
			 MultipulD_TVO dvo,
			@RequestParam("bigCategory") String bigCategory,
			@RequestParam("middleCategory") String middleCategory,
			@RequestParam("smallCategory") String smallCategory,
			
			@RequestParam("boardType") String  boardType,
			
			@RequestParam("user_ID") String user_ID,
			@RequestParam("title") String title,
			@RequestParam("money") int price,
			@RequestParam("text") String text,
			
			@RequestParam("text1") String text1,
			@RequestParam("text2") String text2,
			@RequestParam("text3") String text3,
			
			RedirectAttributes RA) {
		System.out.println("===================");
		System.out.println("bigCategory" + bigCategory);
		System.out.println("middleCategory" + middleCategory);
		System.out.println("smallCategory" + smallCategory);
		System.out.println("===================");
		
		System.out.println("boardType" + boardType);
		System.out.println("user_ID"+user_ID);
		System.out.println("title"+title);
		System.out.println("price"+ price);
		
		System.out.println("text" + text);
		
		System.out.println("text1" + text1);
		System.out.println("text2" + text2);
		System.out.println("text3" + text3);
		
		System.out.println("===================");
		
		System.out.println("===================");
		int C_code = 3;
		int bno = detailBoardService.findBno();
		System.out.println("bno"+bno );
		int result = detailBoardService.insertMainBoardVO(bno, user_ID, C_code, boardType, title, text, price);
		System.out.println("result" + result);
		int textinsert = detailBoardService.insertText(bno, text1, text2, text3);
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
	
		ArrayList<Y_M_boardVO> list = vo.getList();
		ArrayList<D_T_boardVO> dtList = dvo.getDTlist();
		int rno = detailBoardService.findRno();
		System.out.println(list);
		try {
			for(int i = 0; i< list.size(); i++)
			{
				System.out.println("===================");
				int M_year1 = list.get(i).getM_year1();
				System.out.println("M_year1" + M_year1);
				int M_year2 = list.get(i).getM_year2();
				System.out.println("M_year2" + M_year2);
				int M_month1 = list.get(i).getM_month1();
				System.out.println("M_month1" + M_month1);
				int M_month2 = list.get(i).getM_month2();
				System.out.println("M_month2" + M_month2);
				
				int M_time1 = list.get(i).getM_time1();
				System.out.println("M_time1" + M_time1);
				int M_time2 = list.get(i).getM_time2();
				System.out.println("M_time2" +M_time2);
				String Money = list.get(i).getMoney();
				System.out.println("Money" +Money);
				
				String addrZipNum = list.get(i).getAddrZipNum();
				System.out.println("addrZipNum" + addrZipNum);
				String addrBasic = list.get(i).getAddrBasic();
				System.out.println("addrBasic" +addrBasic);
				String addrDetail = list.get(i).getAddrDetail();
				System.out.println("addrDetail" + addrDetail);
				
				int Y_M_Result = detailBoardService.insertY_M_boardVO(
						bno, rno ,M_year1, M_year2, M_month1, M_month2, M_time1, M_time2, 
						Money, addrBasic, addrDetail);
				System.out.println("Y_M_Result" + Y_M_Result);
				
				
				String M_day = dtList.get(i).getM_day();
				System.out.println(M_day);
				if( M_day != null)
				{
					int dtResult = detailBoardService.insertD_T_boardVO(rno , M_day);
					System.out.println(dtResult);
				}
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		System.out.println("imgvo  " + imgvo);
		ArrayList<UploadIMGVO> imgList = imgvo.getImguploadList();
		System.out.println(imgList);
		try {
			for(int i = 0; i <imgList.size();i++){
				String fileRealName = imgList.get(i).getFile().getOriginalFilename();
				System.out.println("fileRealName "+fileRealName);
				Long size = imgList.get(i).getFile().getSize();
				System.out.println("size " +size);
				String fileExtention = fileRealName.substring( fileRealName.lastIndexOf(".") , fileRealName.length() );
				System.out.println("fileExtention " + fileExtention);
				
				File saveFile = new File(APP_CONSTANT.UPLOAD_PATH + "\\" + fileRealName); //업로드 경로
				System.out.println("saveFile "+saveFile);
				int imgresult = detailBoardService.insertIMGBoardVO(bno, fileRealName);
				
				imgList.get(i).getFile().transferTo(saveFile); //실제 파일을 로컬환경으로 저장
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");		
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		
		RA.addFlashAttribute("bno", bno);
		System.out.println("값넘기기");
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		return "redirect:/detailBoard/detailPage";
		
	}
	
	
}
