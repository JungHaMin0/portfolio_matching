package com.spring.ex.scrap.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.scrap.domain.ScrapVO;

@Repository
public class ScrapDAOImpl implements ScrapDAO{
	
	
	  @Inject SqlSession sqlSession;
	 
	/*
	 * @Autowired private SqlSession sqlSession;
	 */

	@Override
	public List<ScrapVO> scrapList(String scrap_userId) throws Exception {
		return sqlSession.selectList("scrapMapper.scrapList", scrap_userId);
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
