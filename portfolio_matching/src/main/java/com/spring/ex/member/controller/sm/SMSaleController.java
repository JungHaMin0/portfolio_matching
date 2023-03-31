package com.spring.ex.member.controller.sm;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.member.domain.Criteria;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.member.domain.PageMaker;
import com.spring.ex.member.service.MyPageService;

@Controller
public class SMSaleController {
	@Inject
	MyPageService service;

	
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
}
