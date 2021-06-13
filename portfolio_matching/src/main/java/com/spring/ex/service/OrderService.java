package com.spring.ex.service;

import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.PortRegVO;

public interface OrderService {

	public OrderVO order(OrderVO vo) throws Exception;

	public PortRegVO detailPort(int portfolio_id);

	public PortRegVO detail(int portlist_id);

}