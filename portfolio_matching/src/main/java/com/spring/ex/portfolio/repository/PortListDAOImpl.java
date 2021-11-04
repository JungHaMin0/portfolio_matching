package com.spring.ex.portfolio.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.portfolio.domain.PortListVO;
import com.spring.ex.portfolio.domain.SearchCriteria;

@Repository
public class PortListDAOImpl implements PortListDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<PortListVO> list(SearchCriteria cri) {
		 return sqlSession.selectList("portlistMapper.list", cri);
	}
	
	@Override
	public List<PortListVO> Mainlist() {
		 return sqlSession.selectList("portlistMapper.main");
	}
	@Override
	public List<PortListVO> Mainlist2() {
		 return sqlSession.selectList("portlistMapper.main2");
	}
	@Override
	public List<PortListVO> Mainlist3() {
		 return sqlSession.selectList("portlistMapper.main3");
	}
	@Override
	public List<PortListVO> Mainlist4() {
		 return sqlSession.selectList("portlistMapper.main4");
	}
	
	@Override
	public Integer Count(SearchCriteria cri) {
		 return sqlSession.selectOne("portlistMapper.Count", cri);
		} 
	@Override
	public List<Map<String,Object>> selectlist() {
		 return sqlSession.selectList("portlistMapper.selectMap");
		}

	@Override
	public List<PortListVO> listWeb(SearchCriteria cri) {
		return sqlSession.selectList("portlistMapper.web", cri);
	}



	@Override
	public List<PortListVO> listApp(SearchCriteria cri) {
		return sqlSession.selectList("portlistMapper.app", cri);
	}



	@Override
	public List<PortListVO> listDesign(SearchCriteria cri) {
		return sqlSession.selectList("portlistMapper.design", cri);
	}



	@Override
	public List<PortListVO> listPhoto(SearchCriteria cri) {
		return sqlSession.selectList("portlistMapper.photo", cri);
	}

	@Override
	public Integer CountWeb(SearchCriteria cri) {
		return sqlSession.selectOne("portlistMapper.CountWeb", cri);
	}

	@Override
	public Integer CountApp(SearchCriteria cri) {
		return sqlSession.selectOne("portlistMapper.CountApp", cri);
	}

	@Override
	public Integer CountDesign(SearchCriteria cri) {
		return sqlSession.selectOne("portlistMapper.CountDesign", cri);
	}

	@Override
	public Integer CountPhoto(SearchCriteria cri) {
		return sqlSession.selectOne("portlistMapper.CountPhoto", cri);
	}




		
}

	

