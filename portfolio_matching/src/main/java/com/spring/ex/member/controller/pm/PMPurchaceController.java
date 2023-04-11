package com.spring.ex.member.controller.pm;

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
public class PMPurchaceController {

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
}
