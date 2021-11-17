package com.spring.ex.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.repository.AdminDAO;
<<<<<<< HEAD
import com.spring.ex.deal.domain.Deal_PortVO;
=======
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.review.domain.ReviewVO;
>>>>>>> refs/remotes/origin/hamin

@Service
public class AdminServiceImpl implements AdminService {
	@Inject
	AdminDAO dao;

	@Override
	public List<Deal_PortVO> PurchaseList() throws Exception {
		
		return dao.PurchaseList();
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
	public List<Deal_PortVO> SaleList() throws Exception {
		return dao.SaleList();
	}






	@Inject AdminDAO dao;
	
	@Override
	public List<ReviewVO> reviewlist() {
		 return dao.reviewlist();
	}
	
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
}
