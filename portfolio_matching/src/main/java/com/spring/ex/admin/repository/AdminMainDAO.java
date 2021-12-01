package com.spring.ex.admin.repository;

import java.util.List;

import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.deal.domain.Deal_PortVO;
import com.spring.ex.inquiry.domain.AnswerVO;
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.review.domain.ReviewVO;

public interface AdminMainDAO {

	public List<PortRegVO> toplist();

	public List<PortRegVO> catelist();

	public List<PortRegVO> portcnt();
	
	public List<DealVO> dcntlist();
	
	public List<PortRegVO> pcnt();
	
	public List<AnswerVO> acntlist();
	
	public List<DealVO> dealChart();
	
	public List<PortRegVO> statPortList();
}
