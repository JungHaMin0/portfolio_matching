package com.spring.ex.deal.service;

import com.spring.ex.deal.domain.OrderVO;
import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.portfolio.domain.PortfolioDTO;

public interface OrderService {

	public OrderVO order(OrderVO vo) throws Exception;
}