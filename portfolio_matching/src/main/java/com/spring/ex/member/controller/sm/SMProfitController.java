package com.spring.ex.member.controller.sm;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.member.domain.Criteria;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.member.domain.PageMaker;
import com.spring.ex.member.service.MyPageService;

@Controller
public class SMProfitController {

	@Inject
	MyPageService service;

	// 수익 현황
	@RequestMapping(value = "smProfit.do", method = RequestMethod.GET)
	public String smProfit(HttpSession session, Model model, Criteria cri) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		cri.setUser_id(vo.getUser_id());
		
		
		model.addAttribute("smProfitList", service.smProfitList(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.smProfitListCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		
		List<DealVO> list = service.smProfitTotal(vo.getUser_id());
		double total = 0.0;
		double temp;
		for(int i=0; i<list.size(); i++) {
			temp = list.get(i).getDeal_price();
			total += (temp - (temp * 0.1));
		}
		model.addAttribute("total", total);
		
		return "mypage/smProfit";
	}
}
