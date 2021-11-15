package com.spring.ex.review.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.review.domain.ReviewVO;

@Repository
public class ReviewDAOImpl implements ReviewDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ReviewVO> reviewlist() {
		return sqlSession.selectList("mypageMapper.reviewlist");
	}
}
