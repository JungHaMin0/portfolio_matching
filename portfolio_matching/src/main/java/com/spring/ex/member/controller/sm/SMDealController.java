package com.spring.ex.member.controller.sm;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.member.service.MyPageService;

@Controller
public class SMDealController {

	@Inject
	MyPageService service;

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

}
