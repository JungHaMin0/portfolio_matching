package com.spring.ex.admin.repository;

import java.util.List;

import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.review.ReviewVO;

public interface AdminDAO {
	public List<ReviewVO> reviewlist();
	public List<PortRegVO> toplist();
	public List<PortRegVO> catelist();
	public List<PortRegVO> portcnt();
}
