package com.spring.ex.deal.repository;

import com.spring.ex.deal.domain.OrderVO;

public interface OrderDAO {
	public int order(OrderVO vo) throws Exception;
}