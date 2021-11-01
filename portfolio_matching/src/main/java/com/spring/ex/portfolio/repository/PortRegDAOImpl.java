package com.spring.ex.portfolio.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.Criteria;
import com.spring.ex.portfolio.domain.PortRegVO;
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
	public List<PortRegVO> portfolioAll(Criteria cri) throws Exception {
		return sqlSession.selectList("portRegMapper.portfolioAll", cri);
	}
	
	@Override
	public int portfolioAllCount(int main_id) throws Exception {
		return sqlSession.selectOne("portRegMapper.portfolioAllCount", main_id);
	}

	@Override
	public List<PortRegVO> portfolioList(Criteria cri) throws Exception {
		return sqlSession.selectList("portRegMapper.portfolioList", cri);
	}
	
	@Override
	public int portfolioListCount(int main_id, int id) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("main_id", main_id);
		parameters.put("id", id);
		return sqlSession.selectOne("portRegMapper.portfolioListCount", parameters);
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

}
