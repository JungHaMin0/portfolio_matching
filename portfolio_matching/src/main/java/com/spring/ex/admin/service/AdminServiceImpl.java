package com.spring.ex.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.repository.AdminDAO;
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.review.domain.ReviewVO;

@Service
public class AdminServiceImpl implements AdminService {

	@Inject AdminDAO dao;
	
	@Override
	public List<ReviewVO> reviewlist() {
		 return dao.reviewlist();
	}
	
	@Override
	public List<PortRegVO> toplist() {
		 return dao.toplist();
	}
	
	@Override
	public List<PortRegVO> catelist() {
		 return dao.catelist();
	}
	
	@Override
	public List<PortRegVO> portcnt() {
		 return dao.portcnt();
	}
}
