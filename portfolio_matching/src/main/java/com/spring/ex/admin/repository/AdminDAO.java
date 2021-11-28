package com.spring.ex.admin.repository;

import java.util.List;

import com.spring.ex.deal.domain.Deal_PortVO;
import com.spring.ex.inquiry.domain.InquiryVO;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.portfolio.domain.PortfolioVO;
import com.spring.ex.portfolio.domain.SearchCriteria;
import com.spring.ex.review.domain.ReviewVO;

public interface AdminDAO {
	// 관리자 구매내역
	public List<Deal_PortVO> PurchaseList() throws Exception;

	// 관리자 구매내역 상세
	public List<Deal_PortVO> purUser(String purUser) throws Exception;

	public List<Deal_PortVO> smSaleList(String saleUser) throws Exception;

	public List<PortfolioVO> port(String user_id) throws Exception;

	public List<ReviewVO> reviewlist();
	public MemberVO user(String user_id) throws Exception;
}
