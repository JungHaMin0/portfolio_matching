package com.spring.ex.admin.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.PortRegVO;

@Repository
public class AdminPortfolioDAOImpl implements AdminPortfolioDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<PortRegVO> portfolioList() throws Exception {
		return sqlSession.selectList("adminPortfolioMapper.portfolioList");
	}
	
	@Override
	public CategoryMainVO categoryMainGetOne(int id) throws Exception {
		return sqlSession.selectOne("adminPortfolioMapper.categoryMainGetOne", id);
	}

	@Override
	public CategorySubVO categorySubGetOne(int id) throws Exception {
		return sqlSession.selectOne("adminPortfolioMapper.categorySubGetOne", id);
	}

	@Override
	public PortRegVO adminPortfolioImage(int portfolio_id) throws Exception {
		return sqlSession.selectOne("adminPortfolioMapper.adminPortfolioImage", portfolio_id);
	}

	@Override
	public PortRegVO adminPortfolioContent(int portfolio_id) throws Exception {
		return sqlSession.selectOne("adminPortfolioMapper.adminPortfolioContent", portfolio_id);
	}

	@Override
	public int adminPortfolioDelete(int portfolio_id) throws Exception {
		return sqlSession.delete("adminPortfolioMapper.adminPortfolioDelete", portfolio_id);
	}
}