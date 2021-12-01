package com.spring.ex.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminMainService;
import com.spring.ex.member.service.MemberService;

@Controller
public class AdminMainController {

	@Autowired
	MemberService service;

	@Autowired
	AdminMainService aservice;
	
	@RequestMapping(value = "aindex.do", method = RequestMethod.GET)
	public String index(Model model) throws Exception {
		model.addAttribute("topport", aservice.toplist());
		model.addAttribute("portcate", aservice.catelist());
		model.addAttribute("portcnt", aservice.portcnt());
		model.addAttribute("dealcnt", aservice.dcntlist());
		model.addAttribute("pcnt", aservice.pcnt());
		model.addAttribute("acntlist", aservice.acntlist());
		model.addAttribute("dealChart", aservice.dealChart());
		System.out.println(aservice.dealChart());
		return "admin/aindex";
	}
	
	@RequestMapping(value = "adminMember.do", method = RequestMethod.GET)
	public String adminMember(Model model) throws Exception {
		model.addAttribute("mlist", service.view());
		return "admin/member";
	}
	

   @RequestMapping(value = "adminStat.do", method = RequestMethod.GET)
   public String stat(Model model) throws Exception {
	   model.addAttribute("memberview", service.view());
       return "admin/stat";
   }
   
	@RequestMapping(value = "adminStatPortfolio.do", method = RequestMethod.GET)
	public String adminStartPort(Model model) throws Exception {
	   model.addAttribute("statPortList", aservice.statPortList());
	   return "admin/statp";
	}

}
