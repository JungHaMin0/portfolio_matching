package com.spring.ex.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.repository.AdminDAO;
import com.spring.ex.review.domain.ReviewVO;

@Service
public class AdminServiceImpl implements AdminService {

	@Inject AdminDAO dao;
	
	@Override
	public List<ReviewVO> reviewlist() {
		 return dao.reviewlist();
	}
}
