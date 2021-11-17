package com.spring.ex.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminService;
import com.spring.ex.deal.service.OrderService;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.member.service.MemberService;

@Controller
public class AdminController {
	
	@Autowired
	MemberService service;
	
	@Autowired
	AdminService aservice;
	
	@Autowired
	OrderService oservice;
	
	@RequestMapping(value = "aindex.do", method = RequestMethod.GET)
	public String index(Model model) throws Exception {
		model.addAttribute("topport", aservice.toplist());
		model.addAttribute("portcate", aservice.catelist());
		model.addAttribute("portcnt", aservice.portcnt());
		model.addAttribute("dealcnt", oservice.dcntlist());
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
	
	@RequestMapping(value = "adminPur.do", method = RequestMethod.GET)
	public String adminPur() throws Exception {

		return "admin/pur";
	}
	
	@RequestMapping(value = "adminSale.do", method = RequestMethod.GET)
	public String sale() throws Exception {

		return "admin/sale";
	}
	
	@RequestMapping(value = "adminStat.do", method = RequestMethod.GET)
	public String stat() throws Exception {

		return "admin/stat";
	}
	
	@RequestMapping(value = "adminProtfolio.do", method = RequestMethod.GET)
	public String portfolio() throws Exception {

		return "admin/portfolio";
	}
	
}
