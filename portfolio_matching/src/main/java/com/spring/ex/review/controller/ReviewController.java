package com.spring.ex.review.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.review.domain.ReviewVO;
import com.spring.ex.review.service.ReviewService;

@Controller
public class ReviewController {

	
	@Inject
	ReviewService service;
	
	//리뷰 리스트 (관리자페이지)
	@RequestMapping(value = "reviewlist.do", method = RequestMethod.GET)
	public String reivewlist(HttpSession session, Model model) throws Exception {
		 model.addAttribute("reviewlist", service.reviewlist());
		 System.out.println(service.reviewlist());
		return "admin/review";
	}
	   
	   
}
