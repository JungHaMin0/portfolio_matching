package com.spring.ex.review.service;

import java.util.List;

import com.spring.ex.review.domain.ReviewVO;
import com.spring.ex.scrap.domain.ScrapVO;

public interface ReviewService {
	
	public List<ReviewVO> reviewlist();
	public int reviewDelete(ReviewVO reviewVO) throws Exception;

}
