package com.spring.ex.review.repository;

import java.util.List;

import com.spring.ex.review.domain.ReviewVO;
import com.spring.ex.scrap.domain.ScrapVO;

public interface ReviewDAO {
	
	//관리자페이지 - 리뷰리스트 
	public List<ReviewVO> reviewlist();
	
	//관리자페이지 - 리뷰삭제
		public int reviewDelete(ReviewVO reviewVO) throws Exception;
	

}
