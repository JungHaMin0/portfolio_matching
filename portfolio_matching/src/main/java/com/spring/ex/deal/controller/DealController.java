package com.spring.ex.deal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.deal.domain.OrderVO;
import com.spring.ex.deal.service.OrderService;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.portfolio.domain.PortfolioDTO;
import com.spring.ex.portfolio.service.PortRegService;

@Controller
public class DealController {
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private PortRegService portRegService;
	
	@RequestMapping(value = "detailport.do", method = RequestMethod.GET)
	public String detailport(@RequestParam int portfolio_id, Model model, HttpSession session) throws Exception {
		PortfolioDTO portfolioDTO = portRegService.portfolioSelect(portfolio_id);
		
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		
		model.addAttribute("userId", memberVO.getUser_id());
		model.addAttribute("portfolio", portfolioDTO);
		model.addAttribute("seller", portRegService.portfolioSeller(portfolioDTO.getPortfolio_userId()));
		
		return "deal/portfolio_pur";
	}
	
	@RequestMapping(value = "portfolio_payment.do", method = RequestMethod.GET)
	public String portfolio_payment(@RequestParam int portfolio_id, Model model, HttpSession session) throws Exception {
		PortfolioDTO portfolioDTO = portRegService.portfolioSelect(portfolio_id);
		model.addAttribute("portfolio", portfolioDTO);

		return "deal/portfolio_payment";
	}
	
	@RequestMapping(value = "portfolio_order")
	@ResponseBody
	public OrderVO order(HttpServletRequest request, HttpServletResponse response, OrderVO vo) throws Exception {
		PortfolioDTO portfolioDTO = portRegService.portfolioSelect(vo.getDeal_portfolio_id());
		vo.setDeal_saleUser(portfolioDTO.getPortfolio_userId());
		OrderVO vo1 = orderService.order(vo);
		return vo1;
	}
	
	@RequestMapping(value = "portfolio_payment_success")
	public String portfolio_payment_success() {
		return "deal/portfolio_payment_success";
	}
	
	@RequestMapping(value = "portfolio_payment_fail")
	public String portfolio_payment_fail(@RequestParam int portfolio_id, Model model) {
		model.addAttribute("portfolio_id", portfolio_id);
		return "deal/portfolio_payment_fail";
	}
}