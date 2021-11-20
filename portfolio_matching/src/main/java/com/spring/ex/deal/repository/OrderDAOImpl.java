package com.spring.ex.deal.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.deal.domain.OrderVO;

@Repository
public class OrderDAOImpl implements OrderDAO {
  
	@Inject SqlSession sqlSession;
    
	@Override
	public int order(OrderVO vo) throws Exception {
		return sqlSession.insert("dealMapper.order", vo);
	}

}