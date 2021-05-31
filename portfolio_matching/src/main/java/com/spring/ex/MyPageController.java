package com.spring.ex;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.MyPageService;
import com.spring.ex.vo.MemberVO;

@Controller
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	MyPageService service;

	// 구매 관리
	@RequestMapping(value = "pmPurchase.do", method = RequestMethod.GET)
	public String pmPurchase() throws Exception {
		return "mypage/pmPurchase";
	}

	@RequestMapping(value = "pmInterest.do", method = RequestMethod.GET)
	public String pmInterest() throws Exception {
		return "mypage/pmInterest";
	}

	@RequestMapping(value = "pmReview.do", method = RequestMethod.GET)
	public String pmReview() throws Exception {
		return "mypage/pmReview";
	}

	@RequestMapping(value = "pmInquiry.do", method = RequestMethod.GET)
	public String pmInquiry() throws Exception {
		return "mypage/pmInquiry";
	}

	// 판매 관리
	@RequestMapping(value = "smSale.do", method = RequestMethod.GET)
	public String smSale() throws Exception {
		return "mypage/smSale";
	}

	@RequestMapping(value = "smInquiry.do", method = RequestMethod.GET)
	public String smInquiry() throws Exception {
		return "mypage/smInquiry";
	}

	@RequestMapping(value = "smDeal.do", method = RequestMethod.GET)
	public String smDeal() throws Exception {
		return "mypage/smDeal";
	}

	@RequestMapping(value = "smProfit.do", method = RequestMethod.GET)
	public String smProfit() throws Exception {
		return "mypage/smProfit";
	}

	// 회원 정보 관리 >> 페이지 이동
	@RequestMapping(value = "userMod.do", method = RequestMethod.GET)
	public String getUserMod() throws Exception {
		return "mypage/userMod";
	}

	// 회원 정보 수정 >> 회원 정보 수정 기능
	@RequestMapping(value = "userMod.do", method = RequestMethod.POST)
	public String postUserMod(MemberVO vo, HttpSession session) throws Exception {
		service.userUpdate(vo);

		session.invalidate();

		return "redirect:/index.do";
	}

	// 회원 정보 수정 >> 비밀번호 수정 기능
	@RequestMapping(value = "userPwMod.do", method = RequestMethod.POST)
	public String postUserPwMod(MemberVO vo, HttpSession session) throws Exception {
		service.userPwUpdate(vo);

		session.invalidate();

		return "redirect:/index.do";
	}
	
	// 회원 탈퇴 >> 페이지 이동
	@RequestMapping(value = "userDel.do", method = RequestMethod.GET)
	public String getUserDel() throws Exception {
		return "mypage/userDel";
	}
	
	// 회원 탈퇴 >> 기능
	@RequestMapping(value = "userDelete.do", method = RequestMethod.GET)
	public String UserDelete(MemberVO vo, HttpSession session) throws Exception {
		MemberVO member = (MemberVO)session.getAttribute("member");
		service.userDelete(member);
		
		session.invalidate();
		return "redirect:/index.do";
	}
}