package com.spring.ex.admin.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ex.admin.service.AdminMainService;
import com.spring.ex.admin.service.AdminService;
import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.deal.domain.Deal_PortVO;
import com.spring.ex.member.service.MemberService;
import com.spring.ex.member.service.MyPageService;

@Controller
public class AdminController {
   
   @Autowired
   MemberService service;

   @Inject
   MyPageService Mservice;
   
   @Inject
   AdminService Aservice;

   @RequestMapping(value = "adminReview.do", method = RequestMethod.GET)
   public String adminReview(Model model) throws Exception {
      model.addAttribute("reviewlist", Aservice.reviewlist());
      return "admin/review";
   }

	// 구매내역
		@RequestMapping(value = "adminPur.do", method = RequestMethod.GET)
		public ModelAndView adminPur() throws Exception {
			List<Deal_PortVO> list = Aservice.PurchaseList();
	
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/pur");
			mav.addObject("list", list);
			return mav;
		}
		

		
		//==================================================================================
		// 내정보 상세
		@RequestMapping(value = "A_Info.do", method = RequestMethod.GET)
		public ModelAndView purUser1(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
			mav.addObject("user", Aservice.user(user_id));
			
			mav.setViewName("admin/MD/Info");
			return mav;
		}
		
		// 내정보 상세1
		@RequestMapping(value = "A_Interest.do", method = RequestMethod.GET)
		public ModelAndView purUser2(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
			mav.addObject("user", Aservice.user(user_id));
			mav.addObject("pmInterestList", Aservice.pmInterestList(user_id));//관심상품
			mav.setViewName("admin/MD/Interest");
			return mav;
		}
		// 내정보 상세2
		@RequestMapping(value = "A_Pinquiry.do", method = RequestMethod.GET)
		public ModelAndView purUser3(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
			mav.addObject("user", Aservice.user(user_id));
			mav.addObject("pmInquiryList", Aservice.pmInquiryList(user_id));// 문의내역(구매)
			mav.setViewName("admin/MD/P_inquiry");
			return mav;
		}
		// 내정보 상세3
		@RequestMapping(value = "A_Pur.do", method = RequestMethod.GET)
		public ModelAndView purUser4(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
		
			mav.addObject("pmPurchaseList", Aservice.pmPurchaseList(user_id));//구매
			mav.addObject("user", Aservice.user(user_id));
			mav.setViewName("admin/MD/Pur");
			return mav;
		}
		// 내정보 상세4
		@RequestMapping(value = "A_Sinquiry.do", method = RequestMethod.GET)
		public ModelAndView purUser5(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
		
			mav.addObject("smInquiryList", Aservice.smInquiryList(user_id));//문의내역(판매)
			mav.addObject("user", Aservice.user(user_id));
			mav.setViewName("admin/MD/S_inquiry");
			return mav;
		}
		// 내정보 상세5
		@RequestMapping(value = "A_Sale.do", method = RequestMethod.GET)
		public ModelAndView purUser6(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
			mav.addObject("smSaleList", Aservice.smSaleList(user_id));//판매
			mav.addObject("user", Aservice.user(user_id));
			mav.setViewName("admin/MD/Sale");
			return mav;
		}
		// 내정보 상세6
		@RequestMapping(value = "A_Profit.do", method = RequestMethod.GET)
		public ModelAndView purUser7(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
	
			mav.addObject("smProfitList", Aservice.smProfitList(user_id)); //수익
			mav.addObject("user", Aservice.user(user_id));
			
			List<DealVO> list = Mservice.smProfitTotal(purUser);
			double total = 0.0;
			double temp;
			for(int i=0; i<list.size(); i++) {
				temp = list.get(i).getDeal_price();
				total += (temp - (temp * 0.1));
			}
			
			mav.addObject("total", total);
			
			mav.setViewName("admin/MD/Profit");
			return mav;
		}
		
		
		// 내정보 상세7
		@RequestMapping(value = "A_Port.do", method = RequestMethod.GET)
		public ModelAndView purUser8(@RequestParam String purUser, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			String user_id = purUser;
			
			mav.addObject("port", Aservice.port(user_id));
			mav.addObject("user", Aservice.user(user_id));
			mav.setViewName("admin/MD/Port");
			return mav;
		}
		
}

