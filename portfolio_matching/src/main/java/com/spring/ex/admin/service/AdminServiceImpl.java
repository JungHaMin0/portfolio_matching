package com.spring.ex.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.repository.AdminDAO;
import com.spring.ex.deal.domain.Deal_PortVO;
import com.spring.ex.deal.domain.Deal_Port_InqVO;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.portfolio.domain.PortfolioVO;
import com.spring.ex.portfolio.domain.SearchCriteria;
import com.spring.ex.review.domain.ReviewVO;

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
	public  List<PortfolioVO> port(String user_id) throws Exception {
		return dao.port(user_id);
	}

	@Override
	public List<ReviewVO> reviewlist() {
		return dao.reviewlist();
	}

	@Override
	public MemberVO user(String user_id) throws Exception {
		return dao.user(user_id);
	}

	@Override
	public List<PortfolioVO> pmInterestList(String user_id) throws Exception {
		return dao.pmInterestList(user_id);
	}

	@Override
	public List<Deal_Port_InqVO> pmInquiryList(String user_id) throws Exception {
		return dao.pmInquiryList(user_id);
	}

	@Override
	public List<PortfolioVO> smSaleList(String user_id) throws Exception {
		return dao.smSaleList(user_id);
	}

	@Override
	public List<Deal_PortVO> pmPurchaseList(String user_id) throws Exception {
		return dao.pmPurchaseList(user_id);
	}

	@Override
	public List<Deal_PortVO> smProfitList(String user_id) throws Exception {
		return dao.smProfitList(user_id);
	}

	@Override
	public List<Deal_Port_InqVO> smInquiryList(String user_id) throws Exception {
		return dao.smInquiryList(user_id);
	}




}
