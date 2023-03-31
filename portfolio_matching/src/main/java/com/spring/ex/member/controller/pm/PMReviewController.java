package com.spring.ex.member.controller.pm;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.member.service.MyPageService;
import com.spring.ex.review.domain.ReviewVO;

@Controller
public class PMReviewController {
	@Inject
	MyPageService service;

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
}
