package com.spring.ex.admin.repository;

import java.util.List;

import com.spring.ex.review.domain.ReviewVO;

public interface AdminDAO {
	public List<ReviewVO> reviewlist();
}
