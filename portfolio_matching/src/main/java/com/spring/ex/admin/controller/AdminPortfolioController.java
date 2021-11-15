package com.spring.ex.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminPortfolioService;

@Controller
public class AdminPortfolioController {
	
	@Inject
	AdminPortfolioService adminPortfolioService;
	
	@RequestMapping(value = "adminPortfolio.do", method = RequestMethod.GET)
	public String adminPortfolio(Model model) throws Exception {
		
		model.addAttribute("portfolio", adminPortfolioService.portfolioList());
		return "admin/portfolio";
	}
}
