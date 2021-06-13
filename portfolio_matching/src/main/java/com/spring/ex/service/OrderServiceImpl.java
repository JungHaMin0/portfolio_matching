package com.spring.ex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.OrderDAO;
import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.PortRegVO;

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