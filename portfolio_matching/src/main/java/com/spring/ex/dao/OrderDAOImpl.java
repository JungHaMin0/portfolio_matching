package com.spring.ex.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.PortRegVO;

@Repository
public class OrderDAOImpl implements OrderDAO {
  
	@Inject SqlSession sqlSession;
    
	@Override
	public int order(OrderVO vo) throws Exception {
		return sqlSession.insert("portMapper.order", vo);
	}

	@Override
	public PortRegVO detail(int portlist_id) {
		return sqlSession.selectOne("portMapper.port", portlist_id);
	}
	@Override
	public PortRegVO detailPort(int portfolio_id) {
		return sqlSession.selectOne("portMapper.Detail", portfolio_id);
	}
}