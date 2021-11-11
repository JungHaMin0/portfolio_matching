package com.spring.ex.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	@RequestMapping(value = "adminIndex.do", method = RequestMethod.GET)
	public String index() throws Exception {

		return "admin/aindex";
	}
	
	@RequestMapping(value = "adminMember.do", method = RequestMethod.GET)
	public String adminMember() throws Exception {

		return "admin/member";
	}
	
	@RequestMapping(value = "adminReview.do", method = RequestMethod.GET)
	public String adminReview() throws Exception {

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
	
}
