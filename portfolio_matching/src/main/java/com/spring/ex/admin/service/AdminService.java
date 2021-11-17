package com.spring.ex.admin.service;

import java.util.List;

import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.review.domain.ReviewVO;

public interface AdminService {

	public List<ReviewVO> reviewlist();
	public List<PortRegVO> toplist();
	public List<PortRegVO> catelist();
	public List<PortRegVO> portcnt();
	
}
