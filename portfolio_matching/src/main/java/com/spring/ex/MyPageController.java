package com.spring.ex;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.MyPageService;
import com.spring.ex.vo.AnswerVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;

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

	@RequestMapping(value = "pmInterest.do", method = RequestMethod.GET)
	public String pmInterest() throws Exception {
		return "mypage/pmInterest";
	}

	@RequestMapping(value = "pmReview.do", method = RequestMethod.GET)
	public String pmReview() throws Exception {
		return "mypage/pmReview";
	}

	// 문의 내역(구매)
	@RequestMapping(value = "pmInquiry.do", method = RequestMethod.GET)
	public String pmInquiry(HttpSession session, Model model) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();

		model.addAttribute("pmInquiryList", service.pmInquiryList(user_id));
		return "mypage/pmInquiry";
	}

	// 문의 내역(구매) - 문의 작성 기능
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
	public String postPmInquiryWrite(InquiryVO inquiryVO) throws Exception {

		service.pmInquiryWrite(inquiryVO);

		return "redirect:/pmPurchase.do";
	}
	
	// 문의 내역(구매) - 답변 읽기 기능
		@RequestMapping(value = "pmInquiryRead.do", method = RequestMethod.GET)
		public String pmInquiryRead(HttpServletRequest req, Model model) throws Exception {
			
			int inq_id = Integer.parseInt(req.getParameter("inq_id"));
			String portfolio_title = req.getParameter("portfolio_title");
			
			req.setAttribute("portfolio_title", portfolio_title);
			model.addAttribute("pmInquiryRead", service.pmInquiryRead(inq_id));
			model.addAttribute("pmAnswerRead", service.pmAnswerRead(inq_id));
			System.out.println(model);
			
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

		req.setAttribute("portfolio_title", portfolio_title);
		req.setAttribute("ans_saleUser", user_id);

		model.addAttribute("smInquiryRead", service.smInquiryRead(inq_id));
		System.out.println(model);
		return "mypage/smAnswerWrite";
	}

	// 문의 내역(판매) - 답변 하기 기능
	@RequestMapping(value = "smAnswerWrite.do", method = RequestMethod.POST)
	public String postSmAnswerWrite(AnswerVO answerVO) throws Exception {
		System.out.println(answerVO);
		service.smAnswerWrite(answerVO);
		
		return "mypage/smAnswerWrite";
	}

	@RequestMapping(value = "smDeal.do", method = RequestMethod.GET)
	public String smDeal() throws Exception {
		return "mypage/smDeal";
	}

	@RequestMapping(value = "smProfit.do", method = RequestMethod.GET)
	public String smProfit() throws Exception {
		return "mypage/smProfit";
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