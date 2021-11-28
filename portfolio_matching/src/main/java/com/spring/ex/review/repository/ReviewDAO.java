package com.spring.ex.review.repository;

import java.util.List;

import com.spring.ex.review.domain.ReviewPortVO;
import com.spring.ex.review.domain.ReviewVO;

public interface ReviewDAO {
	
	//관리자페이지 - 리뷰리스트 
	public List<ReviewVO> reviewlist();
	
	//관리자페이지 - 리뷰삭제
		public int reviewDelete(ReviewVO reviewVO) throws Exception;
	
	//관리자페이지 - 상세보기 
	public ReviewVO selectReviewByCode(ReviewVO reviewVO) throws Exception;
	
	//관리자페이지 - 상세보기->원글이동
	public ReviewPortVO ReviewPort(ReviewPortVO reviewPortVO) throws Exception;
}
