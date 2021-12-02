package com.spring.ex.deal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.deal.domain.OrderVO;
import com.spring.ex.deal.repository.OrderDAO;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO dao;

	@Override
	public OrderVO order(OrderVO vo) throws Exception {
		OrderVO vo1 = new OrderVO();

		int insertCnt = dao.order(vo);

		if (insertCnt > 0) {
			vo1.setResult("SUCCESS");
		} else {
			vo1.setResult("FAIL");
		}

		return vo1;
	}
}