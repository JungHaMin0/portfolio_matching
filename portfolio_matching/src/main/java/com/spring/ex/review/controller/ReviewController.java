package com.spring.ex.review.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	//리뷰 삭제(관리자 페이지)
	/*
	 * @RequestMapping(value="reviewDelete.do", method = RequestMethod.GET) public
	 * String reviewDelete(ReviewVO reviewVO, HttpSession session) throws Exception
	 * { ReviewVO review_id = (ReviewVO) session.getAttribute("review_id");
	 * service.reviewDelete(review_id); session.invalidate(); return
	 * "redirect:/reviewlist.do";
	 * 
	 * }
	 */
	
	@ResponseBody
	 @RequestMapping(value="/reviewDelete.do")
	    public int reviewDelete(HttpServletRequest request, @ModelAttribute("reviewVO") ReviewVO reviewVO, Model model) throws Exception{
	        
	        try{
	        	System.out.println(reviewVO);
	        } catch (Exception e){
	            e.printStackTrace();
	        }        
	        
	        return service.reviewDelete(reviewVO);
	        
	    }
	  
	   
	   
}
