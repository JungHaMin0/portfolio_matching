package com.spring.ex.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.review.domain.ReviewVO;
import com.spring.ex.review.repository.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewDAO dao;
	
	@Override
	public List<ReviewVO> reviewlist() {
		return dao.reviewlist();
	}

}
