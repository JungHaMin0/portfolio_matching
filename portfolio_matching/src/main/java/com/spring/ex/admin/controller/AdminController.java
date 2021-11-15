package com.spring.ex.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.member.service.MemberService;
import com.spring.ex.admin.service.AdminService;
import com.spring.ex.deal.domain.Deal_PortVO;
import com.spring.ex.portfolio.domain.Criteria;
import com.spring.ex.portfolio.domain.PageMaker;

import java.util.List;

@Controller
public class AdminController {

	
	@Inject
	MemberService service;

	@Inject
	AdminService Aservice;

	@RequestMapping(value = "aindex.do", method = RequestMethod.GET)
	public String index() throws Exception {

		return "admin/aindex";
	}
	
	@RequestMapping(value = "adminMember.do", method = RequestMethod.GET)
	public String adminMember(Model model) throws Exception {
		model.addAttribute("mlist", service.view());
		return "admin/member";
	}
	

	@RequestMapping(value = "adminReview.do", method = RequestMethod.GET)
	public String adminReview() throws Exception {

		return "admin/review";
	}
	// 구매내역

	@RequestMapping(value = "adminPur.do", method = RequestMethod.GET)
	public ModelAndView adminPur(Criteria cri) throws Exception {
		List<Deal_PortVO> list = Aservice.PurchaseList(cri);
		PageMaker pageMaker =new PageMaker();
		pageMaker.setCri(cri);
		Integer totalNum = Aservice.totalCount();
		pageMaker.setTotalCount(totalNum);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/pur");
		mav.addObject("list", list);
		mav.addObject("pageMaker", pageMaker);

		return mav;
	}
	
	// 구매내역 상세
	@RequestMapping(value = "purUser.do", method = RequestMethod.GET)
	public ModelAndView purUser(@RequestParam String purUser, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		System.out.println(Aservice.purUser(purUser));
		mav.setViewName("admin/purUser");
		mav.addObject("dto", Aservice.purUser(purUser));
		return mav;
	}
	// 판매내역 상세
	@RequestMapping(value = "saleUser.do", method = RequestMethod.GET)
	public ModelAndView saleUSer(@RequestParam String saleUser, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/saleUser");
		mav.addObject("dto", Aservice.saleUser(saleUser));
		return mav;
	}
	// 판매내역
	@RequestMapping(value = "adminSale.do", method = RequestMethod.GET)
		public ModelAndView sale(Criteria cri) throws Exception {
			List<Deal_PortVO> list = Aservice.PurchaseList(cri);
			PageMaker pageMaker =new PageMaker();
			pageMaker.setCri(cri);
			Integer totalNum = Aservice.totalCount();
			pageMaker.setTotalCount(totalNum);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/sale");
			mav.addObject("list", list);
			mav.addObject("pageMaker", pageMaker);

			return mav;
		}
	

	// 포트폴리오
	@RequestMapping(value = "adminPortfolio.do", method = RequestMethod.GET)
	public String portfolio() throws Exception {

		return "admin/portfolio";
	}

	@RequestMapping(value = "adminStat.do", method = RequestMethod.GET)
	public String stat() throws Exception {

		return "admin/stat";
	}
	
	
}
