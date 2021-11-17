package com.spring.ex.admin.controller;

<<<<<<< HEAD
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

=======
import org.springframework.beans.factory.annotation.Autowired;
>>>>>>> refs/remotes/origin/hamin
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
=======

import com.spring.ex.admin.service.AdminService;
import com.spring.ex.member.domain.MemberVO;
>>>>>>> refs/remotes/origin/hamin
import com.spring.ex.member.service.MemberService;
import com.spring.ex.admin.service.AdminService;
import com.spring.ex.deal.domain.Deal_PortVO;

import java.util.List;

@Controller
public class AdminController {

	
	@Autowired
	MemberService service;
<<<<<<< HEAD

	@Inject
	AdminService Aservice;

=======
	
	@Autowired
	AdminService aservice;
	
>>>>>>> refs/remotes/origin/hamin
	@RequestMapping(value = "aindex.do", method = RequestMethod.GET)
	public String index(Model model) throws Exception {
		model.addAttribute("topport", aservice.toplist());
		model.addAttribute("portcate", aservice.catelist());
		model.addAttribute("portcnt", aservice.portcnt());
		System.out.println(aservice.catelist().get(0).getScore());
		return "admin/aindex";
	}
	
	@RequestMapping(value = "adminMember.do", method = RequestMethod.GET)
	public String adminMember(Model model) throws Exception {
		model.addAttribute("mlist", service.view());
		return "admin/member";
	}
	

	@RequestMapping(value = "adminReview.do", method = RequestMethod.GET)
	public String adminReview(Model model) throws Exception {
		model.addAttribute("reviewlist", aservice.reviewlist());
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
	
	// 구매내역 상세
	@RequestMapping(value = "purUser.do", method = RequestMethod.GET)
	public ModelAndView purUser(@RequestParam String purUser, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
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
		public ModelAndView sale() throws Exception {
			List<Deal_PortVO> list = Aservice.PurchaseList();
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/sale");
			mav.addObject("list", list);
	

			return mav;
		}
	

	@RequestMapping(value = "adminStat.do", method = RequestMethod.GET)
	public String stat() throws Exception {

		return "admin/stat";
	}
	
	
}
