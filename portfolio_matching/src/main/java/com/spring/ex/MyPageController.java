package com.spring.ex;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	// 备概 包府
	@RequestMapping(value = "pmPurchase.do", method = RequestMethod.GET)
	public String pmPurchase(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "mypage/pmPurchase";
	}

	@RequestMapping(value = "pmInterest.do", method = RequestMethod.GET)
	public String pmInterest(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "mypage/pmInterest";
	}
	
	@RequestMapping(value = "pmReview.do", method = RequestMethod.GET)
	public String pmReview(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "mypage/pmReview";
	}
	
	@RequestMapping(value = "pmInquiry.do", method = RequestMethod.GET)
	public String pmInquiry(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "mypage/pmInquiry";
	}

	// 魄概 包府
	@RequestMapping(value = "smSale.do", method = RequestMethod.GET)
	public String smSale(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "mypage/smSale";
	}

	@RequestMapping(value = "smSaleStat.do", method = RequestMethod.GET)
	public String smComplete(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "mypage/smComplete";
	}

	@RequestMapping(value = "smProfit.do", method = RequestMethod.GET)
	public String smProfit(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "mypage/smProfit";
	}

	@RequestMapping(value = "smQuest.do", method = RequestMethod.GET)
	public String smQuest(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "mypage/smQuest";
	}

	// 雀盔 沥焊 包府
	@RequestMapping(value = "userMod.do", method = RequestMethod.GET)
	public String userMod(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "mypage/userMod";
	}

	@RequestMapping(value = "userDel.do", method = RequestMethod.GET)
	public String userDel(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "mypage/userDel";
	}
}
