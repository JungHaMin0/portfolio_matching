package com.spring.ex.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.spring.ex.dao.PortListDAO;
import com.spring.ex.vo.PortListVO;

@Repository
public class PortListDAOImpl implements PortListDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<PortListVO> list() throws Exception {
		return sqlSession.selectList("portlistMapper.portlist");
	}
	
	@Override
	public List<PortListVO> listWeb() throws Exception {
		return sqlSession.selectList("portlistMapper.webcg");
	}
	
	@Override
	public List<PortListVO> listApp() throws Exception {
		return sqlSession.selectList("portlistMapper.appcg");
		
	}
	
	@Override
	public List<PortListVO> listDesign() throws Exception {
		return sqlSession.selectList("portlistMapper.designcg");
		
	}
		
	@Override
	public List<PortListVO> listPhoto() throws Exception {
		return sqlSession.selectList("portlistMapper.photocg");
		
	}
		
}

	

