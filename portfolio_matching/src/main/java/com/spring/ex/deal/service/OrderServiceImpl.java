package com.spring.ex.deal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.deal.domain.OrderVO;
import com.spring.ex.deal.repository.OrderDAO;
import com.spring.ex.portfolio.domain.PortRegVO;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO order;

	@Override
	public OrderVO order(OrderVO vo) throws Exception {
		OrderVO vo1 = new OrderVO();

		int insertCnt = order.order(vo);

		if (insertCnt > 0) {
			vo1.setResult("SUCCESS");
		} else {
			vo1.setResult("FAIL");
		}

		return vo1;
	}

	@Override
	public PortRegVO detailPort(int portfolio_id) {
		return order.detailPort(portfolio_id);
	}

	@Override
	public PortRegVO detail(int portlist_id) {
		return order.detail(portlist_id);
	}

}