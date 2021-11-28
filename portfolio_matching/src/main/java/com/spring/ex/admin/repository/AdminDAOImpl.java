package com.spring.ex.admin.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.deal.domain.Deal_PortVO;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.portfolio.domain.PortfolioVO;
import com.spring.ex.portfolio.domain.SearchCriteria;
import com.spring.ex.review.domain.ReviewVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	@Inject
	SqlSession sqlSession;

	@Override
	public List<Deal_PortVO> PurchaseList() throws Exception {
		return sqlSession.selectList("adminMapper.purlist");
	}

	@Override
	public List<Deal_PortVO> purUser(String purUser) throws Exception {
		return sqlSession.selectList("adminMapper.purUser", purUser);
	}

	@Override
	public List<Deal_PortVO> smSaleList(String saleUser) throws Exception {
		return sqlSession.selectList("adminMapper.smSaleList", saleUser);

	}

	@Override
	public List<PortfolioVO> port(String user_id) throws Exception {
		return sqlSession.selectList("adminMapper.port", user_id);
	}

	@Override
	public List<ReviewVO> reviewlist() {
		return sqlSession.selectList("mypageMapper.reviewlist");
	}

	@Override
	public MemberVO user(String user_id) throws Exception {
		return sqlSession.selectOne("adminMapper.user", user_id);
		
	}

	
}
