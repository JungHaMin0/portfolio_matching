package com.spring.ex.admin.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.review.domain.ReviewVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Inject SqlSession sqlSession;
	
	@Override
	public List<ReviewVO> reviewlist() {
		 return sqlSession.selectList("mypageMapper.reviewlist");
	}
}
