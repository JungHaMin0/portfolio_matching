package com.spring.ex.admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ex.admin.service.AdminService;
import com.spring.ex.deal.domain.Deal_PortVO;
import com.spring.ex.member.service.MemberService;
import com.spring.ex.portfolio.domain.Criteria;

@Controller
public class AdminController {

	@Autowired
	MemberService service;

	@Autowired
	AdminService aservice;

	@RequestMapping(value = "adminReview.do", method = RequestMethod.GET)
	public String adminReview(Model model) throws Exception {
		model.addAttribute("reviewlist", aservice.reviewlist());
		return "admin/review";
	}
	// 구매내역
		@RequestMapping(value = "adminPur.do", method = RequestMethod.GET)
		public ModelAndView adminPur() throws Exception {
			List<Deal_PortVO> list = aservice.PurchaseList();
		
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/pur");
			mav.addObject("list", list);

			return mav;
		}
		
		// 구매내역 상세
		@RequestMapping(value = "purUser.do", method = RequestMethod.GET)
		public ModelAndView purUser(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			System.out.println(aservice.purUser(purUser));
			mav.setViewName("admin/purUser");
			mav.addObject("dto", aservice.purUser(purUser));
			return mav;
		}
		// 판매내역 상세
		@RequestMapping(value = "saleUser.do", method = RequestMethod.GET)
		public ModelAndView saleUSer(@RequestParam String saleUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/saleUser");
			mav.addObject("dto", aservice.saleUser(saleUser));
			return mav;
		}
		// 판매내역
		@RequestMapping(value = "adminSale.do", method = RequestMethod.GET)
			public ModelAndView sale(Criteria cri) throws Exception {
				List<Deal_PortVO> list = aservice.PurchaseList();
	

				ModelAndView mav = new ModelAndView();
				mav.setViewName("admin/sale");
				mav.addObject("list", list);

				return mav;
			}

}
