package com.spring.ex.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.review.domain.ReviewPortVO;
import com.spring.ex.review.domain.ReviewVO;
import com.spring.ex.review.repository.ReviewDAO;
import com.spring.ex.review.repository.ReviewDAOImpl;
import com.spring.ex.scrap.domain.ScrapVO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDAO dao;

	@Override
	public List<ReviewVO> reviewlist() {
		return dao.reviewlist();
	}

	@Override
	public int reviewDelete(ReviewVO reviewVO) throws Exception {
		return dao.reviewDelete(reviewVO);
	}

	@Override
	public ReviewVO selectReviewByCode(ReviewVO reviewVO) throws Exception {
		ReviewVO resultVO = dao.selectReviewByCode(reviewVO);
		return resultVO;
	}

	
	  @Override public ReviewPortVO ReviewPort(ReviewPortVO reviewPortVO) throws Exception { 
		  ReviewPortVO reviewportVO = dao.ReviewPort(reviewPortVO); 
		  return reviewportVO; 
		  
	  }
	 

}
