package com.spring.ex.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.repository.AdminDAO;
import com.spring.ex.deal.domain.Deal_PortVO;
import com.spring.ex.portfolio.domain.Criteria;
import com.spring.ex.portfolio.domain.SearchCriteria;

@Service
public class AdminServiceImpl implements AdminService {
	@Inject
	AdminDAO dao;

	@Override
	public List<Deal_PortVO> PurchaseList(Criteria cri) throws Exception {
		
		return dao.PurchaseList(cri);
	}


	@Override
	public List<Deal_PortVO> purUser(String purUser) throws Exception {
		return dao.purUser(purUser);
	}

	@Override
	public List<Deal_PortVO> saleUser(String saleUser) throws Exception {
		return dao.saleUser(saleUser);
		
	}



	@Override
	public Integer totalCount() throws Exception {
		return dao.TotalCount();
	}


	@Override
	public List<Deal_PortVO> SaleList(Criteria cri) throws Exception {
		return dao.SaleList(cri);
	}


	@Override
	public Integer totalsaleCount() throws Exception {
		return dao.TotalSaleCount();
	}




}
