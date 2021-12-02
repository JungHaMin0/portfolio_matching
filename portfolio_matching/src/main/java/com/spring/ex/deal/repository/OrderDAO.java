package com.spring.ex.deal.repository;

import java.util.List;

import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.deal.domain.OrderVO;

public interface OrderDAO {
	public int order(OrderVO vo) throws Exception;
}