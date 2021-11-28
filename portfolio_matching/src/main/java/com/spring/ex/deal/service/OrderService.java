package com.spring.ex.deal.service;

import java.util.List;

import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.deal.domain.OrderVO;

public interface OrderService {

	public OrderVO order(OrderVO vo) throws Exception;
}