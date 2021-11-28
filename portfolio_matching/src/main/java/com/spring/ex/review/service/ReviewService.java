package com.spring.ex.review.service;

import java.util.List;

import com.spring.ex.review.domain.ReviewPortVO;
import com.spring.ex.review.domain.ReviewVO;

public interface ReviewService {
	
	public List<ReviewVO> reviewlist();
	public int reviewDelete(ReviewVO reviewVO) throws Exception;
	public ReviewVO selectReviewByCode(ReviewVO reviewVO) throws Exception;
	public ReviewPortVO ReviewPort(ReviewPortVO reviewPortVO) throws Exception;

}
