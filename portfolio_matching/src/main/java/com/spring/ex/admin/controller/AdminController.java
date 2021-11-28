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
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.member.service.MemberService;
import com.spring.ex.member.service.MyPageService;
import com.spring.ex.portfolio.domain.PageMaker;
import com.spring.ex.portfolio.domain.SearchCriteria;

@Controller
public class AdminController {

	@Autowired
	MemberService service;
	@Autowired
	AdminService aservice;
	
	@Autowired
	MyPageService Mservice;

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
		

		
		//==================================================================================
		// 내정보 상세
		@RequestMapping(value = "A_Info.do", method = RequestMethod.GET)
		public ModelAndView purUser(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
			mav.addObject("user", aservice.user(user_id));
			
			mav.setViewName("admin/MD/Info");
			return mav;
		}
		
		// 내정보 상세1
		@RequestMapping(value = "A_Interest.do", method = RequestMethod.GET)
		public ModelAndView purUser1(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
			mav.addObject("user", aservice.user(user_id));
			mav.addObject("pmInterestList", Mservice.pmInterestList(user_id));//관심상품
			mav.setViewName("admin/MD/Interest");
			return mav;
		}
		// 내정보 상세2
		@RequestMapping(value = "A_Pinquiry.do", method = RequestMethod.GET)
		public ModelAndView purUser2(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
			mav.addObject("user", aservice.user(user_id));
			mav.addObject("pmInquiryList", Mservice.pmInquiryList(user_id));// 문의내역(구매)
			mav.setViewName("admin/MD/P_inquiry");
			return mav;
		}
		// 내정보 상세3
		@RequestMapping(value = "A_Pur.do", method = RequestMethod.GET)
		public ModelAndView purUser3(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
		
			mav.addObject("pmPurchaseList", Mservice.pmPurchaseList(user_id));//구매
			mav.addObject("user", aservice.user(user_id));
			mav.setViewName("admin/MD/Pur");
			return mav;
		}
		// 내정보 상세4
		@RequestMapping(value = "A_Sinquiry.do", method = RequestMethod.GET)
		public ModelAndView purUser4(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
		
			mav.addObject("smInquiryList", Mservice.smInquiryList(user_id));//문의내역(판매)
			mav.addObject("user", aservice.user(user_id));
			mav.setViewName("admin/MD/S_inquiry");
			return mav;
		}
		// 내정보 상세5
		@RequestMapping(value = "A_Sale.do", method = RequestMethod.GET)
		public ModelAndView purUser5(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
			mav.addObject("smSaleList", Mservice.smSaleList(user_id));//판매
			mav.addObject("user", aservice.user(user_id));
			mav.setViewName("admin/MD/Sale");
			return mav;
		}
		// 내정보 상세6
		@RequestMapping(value = "A_Profit.do", method = RequestMethod.GET)
		public ModelAndView purUser6(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
	
			mav.addObject("smProfitList", Mservice.smProfitList(user_id)); //수익
			mav.addObject("user", aservice.user(user_id));
			mav.setViewName("admin/MD/Profit");
			return mav;
		}
		
		
		// 내정보 상세7
		@RequestMapping(value = "A_Port.do", method = RequestMethod.GET)
		public ModelAndView purUser7(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
			mav.addObject("port", aservice.port(user_id));
			mav.addObject("user", aservice.user(user_id));
			mav.setViewName("admin/MD/Port");
			return mav;
		}
		
		
			
}
