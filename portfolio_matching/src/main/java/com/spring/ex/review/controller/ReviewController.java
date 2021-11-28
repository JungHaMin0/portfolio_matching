package com.spring.ex.review.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ex.deal.domain.OrderVO;
import com.spring.ex.portfolio.domain.PortfolioDTO;
import com.spring.ex.portfolio.service.PortRegService;
import com.spring.ex.review.domain.ReviewPortVO;
import com.spring.ex.review.domain.ReviewVO;
import com.spring.ex.review.service.ReviewService;

@Controller
public class ReviewController {

	
	@Inject
	ReviewService service;
	PortRegService portRegService;
	
	//리뷰 리스트 (관리자페이지)
	@RequestMapping(value = "/reviewlist.do", method = RequestMethod.GET)
	public String reivewlist(HttpSession session, Model model) throws Exception {
		 model.addAttribute("reviewlist", service.reviewlist());
		 System.out.println(service.reviewlist());
		return "admin/review";
	}
	
	//리뷰상세보기 (관리자페이지)
	@RequestMapping(value="/review_detail.do", method = {RequestMethod.GET, RequestMethod.POST})
    public String review_detail(@ModelAttribute("reviewVO") ReviewVO reviewVO, ReviewPortVO reviewPortVO, Model model, HttpServletRequest request) throws Exception{
        
    	request.setCharacterEncoding("UTF-8");
        int review_id = Integer.parseInt(request.getParameter("review_id"));
        reviewVO.setReview_id(review_id);
        ReviewVO resultVO = service.selectReviewByCode(reviewVO);
        model.addAttribute("reviewlist", resultVO);
//        model.addAttribute("ReviewPort", reviewPortVO);
//        System.out.println(reviewPortVO);
        System.out.println(resultVO);
        return "admin/review_detail";
    
    }
	
	
   //리뷰상세보기->원문이동(관리자페이지)
	/*
	 * @RequestMapping(value = "ReviewPort.do", method = RequestMethod.GET) public
	 * String ReviewPort(HttpSession session, Model model) throws Exception {
	 * ReviewPortVO reviewPortVO = (ReviewPortVO)
	 * session.getAttribute("ReviewPort"); int portfolio_id =
	 * reviewPortVO.getPortfolio_id();
	 * model.addAttribute("ReviewPort",service.ReviewPort(reviewPortVO));
	 * 
	 * return "admin/review_detail"; }
	 */
	  
	 
	//리뷰삭제(관리자페이지)
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
