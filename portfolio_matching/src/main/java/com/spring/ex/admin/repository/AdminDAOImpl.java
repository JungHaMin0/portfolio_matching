package com.spring.ex.admin.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.deal.domain.Deal_PortVO;
import com.spring.ex.portfolio.domain.Criteria;
import com.spring.ex.portfolio.domain.SearchCriteria;

@Repository
public class AdminDAOImpl implements AdminDAO {
	@Inject
	SqlSession sqlSession;

	
	@Override
	public List<Deal_PortVO> PurchaseList(Criteria cri) throws Exception {
		return sqlSession.selectList("adminMapper.purlist", cri);
	}


	@Override
	public List<Deal_PortVO> purUser(String purUser) throws Exception {
		return sqlSession.selectList("adminMapper.purUser", purUser);
	}

	@Override
	public List<Deal_PortVO> saleUser(String saleUser) throws Exception {
		return sqlSession.selectList("adminMapper.saleUser", saleUser);
		
	}


	@Override
	public Integer TotalCount() throws Exception {
		return sqlSession.selectOne("adminMapper.getTotalCount");
		
	}


	@Override
	public List<Deal_PortVO> SaleList(Criteria cri) throws Exception {
		return sqlSession.selectList("adminMapper.Salelist", cri);
	}


	@Override
	public Integer TotalSaleCount() throws Exception {
		return sqlSession.selectOne("adminMapper.getTotalSaleCount");
	}
	

}
