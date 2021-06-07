package com.spring.ex.dao;

import java.util.List;

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

	@Override
	public List<PortRegVO> portList(PortRegVO vo) throws Exception {
		return sqlSession.selectList("portRegMapper.portList");
	}

	@Override
	public PortRegVO portSelect(PortRegVO vo) throws Exception{
		return sqlSession.selectOne("portRegMapper.portSelect", vo);
		
	}
	
	   @Override
	    public PortRegVO selectPortByCode(int portfoilo_id) throws Exception { 
	   return sqlSession.selectOne( "portRegMapper.selectPortByCode", portfoilo_id);
	
	    }
}
