package com.spring.ex;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.service.MyPageService;
import com.spring.ex.vo.AnswerVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.ReviewVO;
import com.spring.ex.vo.ScrapVO;

@Controller
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	MyPageService service;

	// 구매 내역
	@RequestMapping(value = "pmPurchase.do", method = RequestMethod.GET)
	public String pmPurchase(HttpSession session, Model model) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();

		model.addAttribute("pmPurchaseList", service.pmPurchaseList(user_id));

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

	// 관심 상품
	@RequestMapping(value = "pmInterest.do", method = RequestMethod.GET)
	public String pmInterest(HttpSession session, Model model) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();

		model.addAttribute("pmInterestList", service.pmInterestList(user_id));

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
	public String pmInquiry(HttpSession session, Model model) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();

		model.addAttribute("pmInquiryList", service.pmInquiryList(user_id));
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
	public String smSale(HttpSession session, Model model) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();

		model.addAttribute("smSaleList", service.smSaleList(user_id));

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
	public String smProfit(HttpSession session, Model model) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();

		model.addAttribute("smProfitList", service.smProfitList(user_id));

		return "mypage/smProfit";
	}

	// 문의 내역(판매)
	@RequestMapping(value = "smInquiry.do", method = RequestMethod.GET)
	public String smInquiry(HttpSession session, Model model) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();

		model.addAttribute("smInquiryList", service.smInquiryList(user_id));
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