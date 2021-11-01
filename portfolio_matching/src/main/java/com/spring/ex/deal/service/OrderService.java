package com.spring.ex.deal.service;

import com.spring.ex.deal.domain.OrderVO;
import com.spring.ex.portfolio.domain.PortRegVO;

public interface OrderService {

	public OrderVO order(OrderVO vo) throws Exception;

	public PortRegVO detailPort(int portfolio_id);

	public PortRegVO detail(int portlist_id);

}