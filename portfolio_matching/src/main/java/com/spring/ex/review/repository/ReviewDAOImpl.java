package com.spring.ex.review.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.review.domain.ReviewPortVO;
import com.spring.ex.review.domain.ReviewVO;
import com.spring.ex.scrap.domain.ScrapVO;

@Repository
public class ReviewDAOImpl implements ReviewDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ReviewVO> reviewlist() {
		return sqlSession.selectList("mypageMapper.reviewlist");
	}
	
	@Override // 관심 상품 - 삭제 기능
	public int reviewDelete(ReviewVO reviewVO) throws Exception {
		return sqlSession.delete("mypageMapper.reviewDelete", reviewVO);
	}
	
	@Override
	public ReviewVO selectReviewByCode(ReviewVO reviewVO) throws Exception{
		return sqlSession.selectOne("mypageMapper.selectReviewByCode", reviewVO);
	}
	
	
	  @Override 
	  public ReviewPortVO ReviewPort(ReviewPortVO reviewPortVO) throws Exception{ 
		  return sqlSession.selectOne("mypageMapper.ReviewPort", reviewPortVO); 
	  }
	 
}
