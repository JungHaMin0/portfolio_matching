package com.spring.ex.admin.service;

import java.util.List;

import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.inquiry.domain.InquiryDTO;
import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.portfolio.domain.PortfolioDTO;
import com.spring.ex.review.domain.ReviewVO;

public interface AdminPortfolioService {
	public CategoryMainVO categoryMainGetOne(int id) throws Exception;
	public CategorySubVO categorySubGetOne(int id) throws Exception;
	public List<PortfolioDTO> portfolioList() throws Exception;
	public PortRegVO adminPortfolioImage(int portfolio_id) throws Exception;
	public PortRegVO adminPortfolioContent(int portfolio_id) throws Exception;
	public PortfolioDTO adminPortfolioDetail(int portfolio_id) throws Exception;

	public int adminPortfolioDelete(int portfolio_id) throws Exception;
	
	public int adminPortfolioAllSaleCount(int portfolio_id) throws Exception;
	public int adminPortfolioAllSalePrice(int portfolio_id) throws Exception;
	public int adminPortfolioAllReviewCount(int portfolio_id) throws Exception;
	public int adminPortfolioAllInquiryCount(int portfolio_id) throws Exception;
	
	public List<DealVO> adminPortfolioRecentDeal(int portfolio_id) throws Exception;
	public List<ReviewVO> adminPortfolioRecentReview(int portfolio_id) throws Exception;
	public List<InquiryDTO> adminPortfolioRecentInquiry(int portfolio_id) throws Exception;
	public int adminPortfolioAnsInq(int inq_id) throws Exception;
}
