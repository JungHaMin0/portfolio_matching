package com.spring.ex.portfolio.repository;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.portfolio.domain.SearchCriteria;
import com.spring.ex.review.domain.ReviewVO;

@Repository
public class PortRegDAOImpl implements PortRegDAO {

	@Inject
	SqlSession sqlSession;

	@Override
	public List<CategoryMainVO> categoryMainList() throws Exception {
		return sqlSession.selectList("portRegMapper.categoryMainList");
	}

	@Override
	public CategoryMainVO categoryMainGetOne(int id) throws Exception {
		return sqlSession.selectOne("portRegMapper.categoryMainGetOne", id);
	}

	@Override
	public List<CategorySubVO> categorySubList() throws Exception {
		return sqlSession.selectList("portRegMapper.categorySubList");
	}

	@Override
	public List<CategorySubVO> categorySubListById(int main_id) throws Exception {
		return sqlSession.selectList("portRegMapper.categorySubListById", main_id);
	}
	
	@Override
	public CategorySubVO categorySubGetOne(int id) throws Exception {
		return sqlSession.selectOne("portRegMapper.categorySubGetOne", id);
	}
	
	@Override
	public List<PortRegVO> portfolioAll(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("portRegMapper.portfolioAll", scri);
	}
	
	@Override
	public int portfolioAllCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("portRegMapper.portfolioAllCount", scri);
	}

	@Override
	public List<PortRegVO> portfolioList(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("portRegMapper.portfolioList", scri);
	}
	
	@Override
	public int portfolioListCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("portRegMapper.portfolioListCount", scri);
	}

	@Override
	public void portInsert(PortRegVO vo) throws Exception {
		sqlSession.insert("portRegMapper.portInsert", vo);
	}

	@Override
	public PortRegVO portfolioSelect(int portfolio_id) throws Exception {
		return sqlSession.selectOne("portRegMapper.portfolioSelect", portfolio_id);
	}
	
	@Override
	public MemberVO portfolioSeller(String user_id) throws Exception {
		return sqlSession.selectOne("portRegMapper.portfolioSeller", user_id);
	}

	@Override
	public PortRegVO selectPortByCode(int portfoilo_id) throws Exception {
		return sqlSession.selectOne("portRegMapper.selectPortByCode", portfoilo_id);
	}

	// 첨부 파일 업로드
	public void insertFile(Map<String, Object> map) throws Exception {
		sqlSession.insert("portRegMapper.insertFile", map);
	}
	
	@Override
	public List<ReviewVO> selectReivew(int portfolio_id) throws Exception {
		return sqlSession.selectList("portRegMapper.selectReview", portfolio_id);
	}

	@Override
	public List<PortRegVO> trendPortfolio() throws Exception {
		return sqlSession.selectList("portRegMapper.trendPortfolio");
	}

}
