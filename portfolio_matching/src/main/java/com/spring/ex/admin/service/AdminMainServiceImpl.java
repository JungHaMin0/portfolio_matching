package com.spring.ex.admin.service;

import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.spring.ex.admin.repository.AdminMainDAO;
import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.inquiry.domain.AnswerVO;
import com.spring.ex.portfolio.domain.PortRegVO;

@Service
public class AdminMainServiceImpl implements AdminMainService {
	
	@Inject
	AdminMainDAO dao;

	@Override
	public List<PortRegVO> toplist() {
		return dao.toplist();
	}

	@Override
	public List<PortRegVO> catelist() {
		return dao.catelist();
	}

	@Override
	public List<PortRegVO> portcnt() {
		return dao.portcnt();
	}
	
	@Override
	public List<DealVO> dcntlist() {
		return dao.dcntlist();
	}

	@Override
	public List<PortRegVO> pcnt() {
		return dao.pcnt();
	}
	
	@Override
	public List<AnswerVO> acntlist() {
		return dao.acntlist();
	}
	
	@Override
	public List<DealVO> dealChart() {
		return dao.dealChart();
	}
	
	@Override
	public List<PortRegVO> statPortList() {
		return dao.statPortList();
	}
}
