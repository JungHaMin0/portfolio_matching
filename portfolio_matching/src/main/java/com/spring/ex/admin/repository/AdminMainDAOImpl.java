package com.spring.ex.admin.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.inquiry.domain.AnswerVO;
import com.spring.ex.portfolio.domain.PortRegVO;

@Repository
public class AdminMainDAOImpl implements AdminMainDAO {
	
	@Inject
	SqlSession sqlSession;

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
	
	@Override
	public List<DealVO> dcntlist() {
		return sqlSession.selectList("adminPortfolioMapper.dealcnt");
	}
	
	@Override
	public List<PortRegVO> pcnt() {
		return sqlSession.selectList("adminPortfolioMapper.pcnt");
	}
	
	@Override
	public List<AnswerVO> acntlist() {
		return sqlSession.selectList("adminPortfolioMapper.acnt");
	}
	
	@Override
	public List<DealVO> dealChart() {
		return sqlSession.selectList("adminPortfolioMapper.dealChart");
	}
	
	@Override
	public List<PortRegVO> statPortList() {
		return sqlSession.selectList("adminPortfolioMapper.statPortList");
	}
}
