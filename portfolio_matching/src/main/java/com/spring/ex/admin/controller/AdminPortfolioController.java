package com.spring.ex.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@RequestMapping(value = "adminPortfolioImage.do", method = RequestMethod.GET)
	public String adminPortfolioImage(@RequestParam int portfolio_id, Model model) throws Exception {
		
		model.addAttribute("portfolio", adminPortfolioService.adminPortfolioImage(portfolio_id));
		return "admin/portfolio_image";
	}
	
	@RequestMapping(value = "adminPortfolioContent.do", method = RequestMethod.GET)
	public String adminPortfolioContent(@RequestParam int portfolio_id, Model model) throws Exception {
		
		model.addAttribute("portfolio", adminPortfolioService.adminPortfolioContent(portfolio_id));
		return "admin/portfolio_content";
	}
	
	@ResponseBody
	@RequestMapping(value = "adminPortfolioDelete.do", method = RequestMethod.GET)
	public int adminPortfolioDelete(@RequestParam int portfolio_id) throws Exception {
		return adminPortfolioService.adminPortfolioDelete(portfolio_id);
	}
}