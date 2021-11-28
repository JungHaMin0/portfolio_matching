package com.spring.ex.admin.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.inquiry.domain.InquiryVO;
import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.review.domain.ReviewVO;

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

	@Override
	public PortRegVO adminPortfolioDetail(int portfolio_id) throws Exception {
		return sqlSession.selectOne("adminPortfolioMapper.adminPortfolioDetail", portfolio_id);
	}

	@Override
	public int adminPortfolioAllSaleCount(int portfolio_id) throws Exception {
		return sqlSession.selectOne("adminPortfolioMapper.adminPortfolioAllSaleCount", portfolio_id);
	}

	@Override
	public int adminPortfolioAllSalePrice(int portfolio_id) throws Exception {
		return sqlSession.selectOne("adminPortfolioMapper.adminPortfolioAllSalePrice", portfolio_id);
	}

	@Override
	public int adminPortfolioAllReviewCount(int portfolio_id) throws Exception {
		return sqlSession.selectOne("adminPortfolioMapper.adminPortfolioAllReviewCount", portfolio_id);
	}

	@Override
	public int adminPortfolioAllInquiryCount(int portfolio_id) throws Exception {
		return sqlSession.selectOne("adminPortfolioMapper.adminPortfolioAllInquiryCount", portfolio_id);
	}

	@Override
	public List<DealVO> adminPortfolioRecentDeal(int portfolio_id) throws Exception {
		return sqlSession.selectList("adminPortfolioMapper.adminPortfolioRecentDeal", portfolio_id);
	}

	@Override
	public List<ReviewVO> adminPortfolioRecentReview(int portfolio_id) throws Exception {
		return sqlSession.selectList("adminPortfolioMapper.adminPortfolioRecentReview", portfolio_id);
	}

	@Override
	public List<InquiryVO> adminPortfolioRecentInquiry(int portfolio_id) throws Exception {
		return sqlSession.selectList("adminPortfolioMapper.adminPortfolioRecentInquiry", portfolio_id);
	}
	
	@Override
	public int adminPortfolioAnsInq(int inq_id) throws Exception {
		return sqlSession.selectOne("adminPortfolioMapper.adminPortfolioAnsInq", inq_id);
	}

}