package com.spring.ex.portfolio.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.portfolio.domain.PortfolioDTO;
import com.spring.ex.portfolio.domain.SearchCriteria;
import com.spring.ex.review.domain.ReviewVO;

public interface PortRegService {
	public List<CategoryMainVO> categoryMainList() throws Exception;
	public CategoryMainVO categoryMainGetOne(int id) throws Exception;
	public List<CategorySubVO> categorySubList() throws Exception;
	public List<CategorySubVO> categorySubListById(int main_id) throws Exception;
	public CategorySubVO categorySubGetOne(int id) throws Exception;
	
	public List<PortfolioDTO> portfolioAll(SearchCriteria scri, int main_id) throws Exception;
	public int portfolioAllCount(SearchCriteria scri, int main_id) throws Exception;
	public List<PortfolioDTO> portfolioList(SearchCriteria scri, int main_id, int id) throws Exception;
	public int portfolioListCount(SearchCriteria scri, int main_id, int id) throws Exception;
	
	public void portInsert(PortRegVO vo, MultipartHttpServletRequest req) throws Exception;
	
	public PortfolioDTO portfolioSelect(int portfolio_id) throws Exception;
	public MemberVO portfolioSeller(String user_id) throws Exception;
	
	public PortRegVO selectPortByCode(int portfolio_id) throws Exception;
	public List<ReviewVO> selectReivew(int portfolio_id) throws Exception;
	
	public List<PortfolioDTO> trendPortfolio() throws Exception;
}
