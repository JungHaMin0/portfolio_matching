package com.spring.ex.admin.service;

import java.util.List;

import com.spring.ex.deal.domain.Deal_PortVO;
import com.spring.ex.deal.domain.Deal_Port_InqVO;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.portfolio.domain.PortfolioVO;
import com.spring.ex.portfolio.domain.SearchCriteria;
import com.spring.ex.review.domain.ReviewVO;

public interface AdminService {
	// 관리자 구매내역
		public List<Deal_PortVO> PurchaseList() throws Exception;

		//관리자 구매내역 상세
		public List<Deal_PortVO> purUser(String purUser) throws Exception;
		

		public  List<PortfolioVO> port(String user_id) throws Exception;
	
	public List<ReviewVO> reviewlist();
	public MemberVO user(String user_id) throws Exception;	
	
	//=============================== 상세
	public List<PortfolioVO> pmInterestList(String user_id) throws Exception;
	public List<Deal_Port_InqVO> pmInquiryList(String user_id) throws Exception;
	public List<PortfolioVO> smSaleList(String user_id) throws Exception;
	public List<Deal_PortVO> pmPurchaseList(String user_id) throws Exception;
	public List<Deal_PortVO> smProfitList(String user_id) throws Exception;
	public List<Deal_Port_InqVO> smInquiryList(String user_id) throws Exception;
}
