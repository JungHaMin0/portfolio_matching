package com.spring.ex.member.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.inquiry.domain.AnswerVO;
import com.spring.ex.inquiry.domain.InquiryVO;
import com.spring.ex.member.domain.Criteria;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.member.domain.PageMaker;
import com.spring.ex.member.service.MyPageService;
import com.spring.ex.review.domain.ReviewVO;
import com.spring.ex.scrap.domain.ScrapVO;

@Controller
public class MyPageController {

	@Inject
	MyPageService service;

	// 구매 내역
	@RequestMapping(value = "pmPurchase.do", method = RequestMethod.GET)
	public String pmPurchase(HttpSession session, Model model, Criteria cri) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		cri.setUser_id(vo.getUser_id());
		model.addAttribute("pmPurchaseList", service.pmPurchaseList(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.pmPurchaseListCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		
		return "mypage/pmPurchase";
	}

	// 구매 내역 - 구매 확정 기능
	@RequestMapping(value = "pmPurchaseConfirm.do", method = RequestMethod.GET)
	public String pmPurchaseConfirm(HttpServletRequest req) throws Exception {
		String deal_id = req.getParameter("deal_id");

		service.pmPurchaseConfirm(deal_id);

		return "redirect:pmPurchase.do";
	}

	// 구매내역 - 리뷰 작성
	@RequestMapping(value = "pmReview.do", method = RequestMethod.GET)
	public String pmReview(HttpServletRequest req, HttpSession session) throws Exception {

		String portfolio_id = req.getParameter("portfolio_id");
		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();

		req.setAttribute("portfolio_id", portfolio_id);
		req.setAttribute("user_id", user_id);

		Map<String, String> map = new HashMap<String, String>();
		map.put("review_portfolio_id", portfolio_id);
		map.put("user_id", user_id);

		if (service.reviewChk(map) == 0) {
			req.setAttribute("chk", 1);
		} else {
			req.setAttribute("chk", 0);
		}
		return "mypage/pmReview";
	}

	// 구매 내역 - 리뷰 작성 기능
	@RequestMapping(value = "pmPurchaseReview.do", method = RequestMethod.POST)
	@ResponseBody
	public int pmPurchaseReview(ReviewVO reviewVO) throws Exception {
		int result;
		try {
			service.pmPurchaseReview(reviewVO);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}
	
	// 구매 내역 - 파일 다운로드
	@RequestMapping(value = "pmFile.do", method = RequestMethod.GET)
	public String pmFile(HttpServletRequest req, Model model) throws Exception {
		int file_portfolio_id = Integer.parseInt(req.getParameter("portfolio_id"));
		List<Map<String, Object>> fileList = service.selectFileList(file_portfolio_id);
		model.addAttribute("file", fileList);
		
		return "mypage/pmFile";
	}
	
	// 구매 내역 - 파일 다운로드 기능
	@RequestMapping(value = "pmFileDown.do", method = RequestMethod.POST)
	public void pmFileDown(@RequestParam Map<String, Object> map, HttpServletResponse response) throws Exception {
		System.out.println(map);
		Map<String, Object> resultMap = service.selectFileInfo(map);
		String storedFileName = (String) resultMap.get("file_stored_name");
		String originalFileName = (String) resultMap.get("file_org_name");
		
		byte fileByte[] = org.apache.commons.io.FileUtils.readFileToByteArray(new File("C:\\Users\\jeong\\git\\portfolio_matching\\portfolio_matching\\src\\main\\webapp\\resources\\upload\\"+storedFileName));
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition",  "attachment; fileName=\""+URLEncoder.encode(originalFileName, "UTF-8")+"\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}
	
	// 관심 상품
	@RequestMapping(value = "pmInterest.do", method = RequestMethod.GET)
	public String pmInterest(HttpSession session, Model model, Criteria cri) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		cri.setUser_id(vo.getUser_id());
		
		model.addAttribute("pmInterestList", service.pmInterestList(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.pmInterestListCount(cri));
		model.addAttribute("pageMaker", pageMaker);

		return "mypage/pmInterest";
	}

	// 관심 상품 - 삭제 기능
	@RequestMapping(value = "pmInterestDelete.do", method = RequestMethod.GET)
	public String pmInterestDelete(HttpServletRequest req, HttpSession session, Model model, ScrapVO scrapVO) throws Exception {
		int scrap_portfolio_id = Integer.parseInt(req.getParameter("portfolio_id"));
		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();
		
		scrapVO.setScrap_portfolio_id(scrap_portfolio_id);
		scrapVO.setScrap_userId(user_id);
		
		service.pmInterestDelete(scrapVO);
		
		return "redirect:/pmInterest.do";
	}

	// 문의 내역(구매)
	@RequestMapping(value = "pmInquiry.do", method = RequestMethod.GET)
	public String pmInquiry(HttpSession session, Model model, Criteria cri) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		cri.setUser_id(vo.getUser_id());
		
		model.addAttribute("pmInquiryList", service.pmInquiryList(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.pmInquiryListCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		
		return "mypage/pmInquiry";
	}

	// 문의 내역(구매) - 문의 작성
	@RequestMapping(value = "pmInquiryWrite.do", method = RequestMethod.GET)
	public String getPmInquiryWrite(HttpServletRequest req, HttpSession session, Model model) throws Exception {
		String deal_id = req.getParameter("deal_id");
		String portfolio_title = req.getParameter("portfolio_title");
		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();

		req.setAttribute("inq_deal_id", deal_id);
		req.setAttribute("portfolio_title", portfolio_title);
		req.setAttribute("inq_purUser", user_id);

		return "mypage/pmInquiryWrite";
	}

	// 문의 내역(구매) - 작성 기능
	@RequestMapping(value = "pmInquiryWrite.do", method = RequestMethod.POST)
	@ResponseBody
	public int postPmInquiryWrite(InquiryVO inquiryVO) throws Exception {
		int result;

		try {
			service.pmInquiryWrite(inquiryVO);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}

	// 문의 내역(구매) - 답변 읽기 기능
	@RequestMapping(value = "pmInquiryRead.do", method = RequestMethod.GET)
	public String pmInquiryRead(HttpServletRequest req, Model model) throws Exception {

		int inq_id = Integer.parseInt(req.getParameter("inq_id"));
		String portfolio_title = req.getParameter("portfolio_title");

		req.setAttribute("portfolio_title", portfolio_title);
		model.addAttribute("pmInquiryRead", service.pmInquiryRead(inq_id));
		model.addAttribute("pmAnswerRead", service.pmAnswerRead(inq_id));

		return "mypage/pmInquiryRead";
	}
	
	// 판매 중
	@RequestMapping(value = "smSale.do", method = RequestMethod.GET)
	public String smSale(HttpSession session, Model model, Criteria cri) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		cri.setUser_id(vo.getUser_id());

		model.addAttribute("smSaleList", service.smSaleList(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.smSaleListCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		
		return "mypage/smSale";
	}
	
	// 판매 중 - 삭제 기능
	@RequestMapping(value = "smSaleDelete.do", method = RequestMethod.GET)
	public String smSaleDelete(HttpServletRequest req, Model model) throws Exception {
		int portfolio_id = Integer.parseInt(req.getParameter("portfolio_id"));
		
		service.smSaleDelete(portfolio_id);
		
		return "redirect:/smSale.do";
	}

	// 거래 현황
	@RequestMapping(value = "smDeal.do", method = RequestMethod.GET)
	public String smDeal(HttpServletRequest req, Model model) throws Exception {
		int portfolio_id = Integer.parseInt(req.getParameter("portfolio_id"));

		model.addAttribute("smDealList", service.smDealList(portfolio_id));

		return "mypage/smDeal";
	}

	// 거래 현황 - 작업 중으로 변경
	@RequestMapping(value = "smDealWorking.do", method = RequestMethod.GET)
	public String smDealWorking(HttpServletRequest req, Model model) throws Exception {
		int deal_id = Integer.parseInt(req.getParameter("deal_id"));
		String url = "smDeal.do?portfolio_id=" + req.getParameter("portfolio_id");

		service.smDealWorking(deal_id);

		return "redirect:" + url;
	}

	// 거래 현황 - 작업 중으로 변경
	@RequestMapping(value = "smDealComplete.do", method = RequestMethod.GET)
	public String smDealComplete(HttpServletRequest req, Model model) throws Exception {
		int deal_id = Integer.parseInt(req.getParameter("deal_id"));
		String url = "smDeal.do?portfolio_id=" + req.getParameter("portfolio_id");

		service.smDealComplete(deal_id);

		return "redirect:" + url;
	}

	// 수익 현황
	@RequestMapping(value = "smProfit.do", method = RequestMethod.GET)
	public String smProfit(HttpSession session, Model model, Criteria cri) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		cri.setUser_id(vo.getUser_id());
		
		
		model.addAttribute("smProfitList", service.smProfitList(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.smProfitListCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		
		List<DealVO> list = service.smProfitTotal(vo.getUser_id());
		double total = 0.0;
		double temp;
		for(int i=0; i<list.size(); i++) {
			temp = list.get(i).getDeal_price();
			total += (temp - (temp * 0.1));
		}
		model.addAttribute("total", total);
		
		return "mypage/smProfit";
	}

	// 문의 내역(판매)
	@RequestMapping(value = "smInquiry.do", method = RequestMethod.GET)
	public String smInquiry(HttpSession session, Model model, Criteria cri) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		cri.setUser_id(vo.getUser_id());
		
		model.addAttribute("smInquiryList", service.smInquiryList(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.smInquiryListCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		
		return "mypage/smInquiry";
	}

	// 문의 내역(판매) - 답변 하기
	@RequestMapping(value = "smAnswerWrite.do", method = RequestMethod.GET)
	public String getSmAnswerWrite(HttpServletRequest req, HttpSession session, Model model) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();

		int inq_id = Integer.parseInt(req.getParameter("inq_id"));
		String portfolio_title = req.getParameter("porfolio_title");
		
		if(service.smAnswerChk(inq_id) == 1) {
			req.setAttribute("portfolio_title", portfolio_title);
			model.addAttribute("pmInquiryRead", service.pmInquiryRead(inq_id));
			model.addAttribute("pmAnswerRead", service.pmAnswerRead(inq_id));
			return "mypage/pmInquiryRead";
		} else {
			req.setAttribute("portfolio_title", portfolio_title);
			req.setAttribute("ans_saleUser", user_id);
			model.addAttribute("smInquiryRead", service.smInquiryRead(inq_id));
			return "mypage/smAnswerWrite";
		}
	}

	// 문의 내역(판매) - 답변 하기 기능
	@RequestMapping(value = "smAnswerWrite.do", method = RequestMethod.POST)
	@ResponseBody
	public int postSmAnswerWrite(AnswerVO answerVO) throws Exception {
		int result;
		try {
			service.smAnswerWrite(answerVO);
			result = 1;
		} catch(Exception e) {
			e.printStackTrace();
			result = 0;
			return result;
		}
		return result;
	}

	// 내 정보 수정
	@RequestMapping(value = "userMod.do", method = RequestMethod.GET)
	public String getUserMod() throws Exception {
		return "mypage/userMod";
	}

	// 내 정보 수정 - 수정 기능
	@RequestMapping(value = "userMod.do", method = RequestMethod.POST)
	public String postUserMod(MemberVO vo, HttpSession session) throws Exception {
		service.userUpdate(vo);

		session.invalidate();

		return "redirect:/index.do";
	}

	// 내 정보 수정 - 비밀번호 수정 기능
	@RequestMapping(value = "userPwMod.do", method = RequestMethod.POST)
	public String postUserPwMod(MemberVO vo, HttpSession session) throws Exception {
		service.userPwUpdate(vo);

		session.invalidate();

		return "redirect:/index.do";
	}

	// 회원 탈퇴
	@RequestMapping(value = "userDel.do", method = RequestMethod.GET)
	public String getUserDel() throws Exception {
		return "mypage/userDel";
	}

	// 회원 탈퇴 - 탈퇴 기능
	@RequestMapping(value = "userDelete.do", method = RequestMethod.GET)
	public String UserDelete(MemberVO vo, HttpSession session) throws Exception {
		MemberVO member = (MemberVO) session.getAttribute("member");
		service.userDelete(member);

		session.invalidate();
		return "redirect:/index.do";
	}
}