package com.spring.ex.dao;

import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.PortRegVO;

public interface OrderDAO {
	public PortRegVO detail(int portlist_id);
	public PortRegVO detailPort(int portfolio_id);
    public int order(OrderVO vo) throws Exception;
    
}