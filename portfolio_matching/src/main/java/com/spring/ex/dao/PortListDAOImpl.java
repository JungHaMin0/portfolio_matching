package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.dao.PortListDAO;
import com.spring.ex.vo.PortListVO;

@Repository
public class PortListDAOImpl implements PortListDAO {

	@Inject
	private SqlSession sqlSession;

	@Override
	public List<PortListVO> list() throws Exception {
		return sqlSession.selectList("portlistMapper.portlist");
		
	}

	
}
