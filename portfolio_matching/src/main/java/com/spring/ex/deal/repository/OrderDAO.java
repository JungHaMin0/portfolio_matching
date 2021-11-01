package com.spring.ex.deal.repository;

import com.spring.ex.deal.domain.OrderVO;
import com.spring.ex.portfolio.domain.PortRegVO;

public interface OrderDAO {
	public PortRegVO detail(int portlist_id);
	public PortRegVO detailPort(int portfolio_id);
    public int order(OrderVO vo) throws Exception;
    
}