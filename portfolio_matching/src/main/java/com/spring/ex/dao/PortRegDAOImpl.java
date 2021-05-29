package com.spring.ex.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.PortRegVO;

@Repository
public class PortRegDAOImpl implements PortRegDAO{
	
	@Inject SqlSession sqlSession;
	
	@Override
	public void portInsert(PortRegVO vo) throws Exception {
		sqlSession.insert("portRegMapper.portInsert", vo);
	}
}
