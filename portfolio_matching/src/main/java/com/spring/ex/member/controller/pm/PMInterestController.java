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
import com.spring.ex.scrap.domain.ScrapVO;

@Controller
public class PMInterestController {

	@Inject
	MyPageService service;
	
	
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
}
