package com.spring.ex.scrap.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.scrap.domain.ScrapVO;

@Repository
public class ScrapDAOImpl implements ScrapDAO {

	@Inject
	SqlSession sqlSession;

	@Override
	public List<ScrapVO> scrapList(String scrap_userId) throws Exception {
		return sqlSession.selectList("scrapMapper.scrapList", scrap_userId);
	}

	@Override
	public int scrapCheck(ScrapVO scrapVO) throws Exception {
		return sqlSession.selectOne("scrapMapper.scrapCheck", scrapVO);
	}
	
	@Override
	public void scrapInsert(ScrapVO scrapVO) throws Exception {
		sqlSession.insert("scrapMapper.scrapInsert", scrapVO);
	}

	@Override
	public void scrapDelete(ScrapVO scrapVO) throws Exception {
		sqlSession.delete("scrapMapper.scrapDelete", scrapVO);

	}

}
