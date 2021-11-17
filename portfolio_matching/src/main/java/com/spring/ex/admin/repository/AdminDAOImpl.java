package com.spring.ex.admin.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.deal.domain.Deal_PortVO;
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.review.ReviewVO;

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
	public List<Deal_PortVO> saleUser(String saleUser) throws Exception {
		return sqlSession.selectList("adminMapper.saleUser", saleUser);

	}

	@Override
	public List<Deal_PortVO> SaleList() throws Exception {
		return sqlSession.selectList("adminMapper.Salelist");
	}

	@Override
	public List<ReviewVO> reviewlist() {
		return sqlSession.selectList("mypageMapper.reviewlist");
	}

	@Override
	public List<PortRegVO> toplist() {
		return sqlSession.selectList("adminPortfolioMapper.topport");
	}

	@Override
	public List<PortRegVO> catelist() {
		return sqlSession.selectList("adminPortfolioMapper.portcate");
	}

	@Override
	public List<PortRegVO> portcnt() {
		return sqlSession.selectList("adminPortfolioMapper.portcnt");
	}
}
