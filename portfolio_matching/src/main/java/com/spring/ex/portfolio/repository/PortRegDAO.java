package com.spring.ex.portfolio.repository;

import java.util.List;
import java.util.Map;

import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.portfolio.domain.SearchCriteria;
import com.spring.ex.review.domain.ReviewVO;

public interface PortRegDAO {
	
	// category 검색
	public List<CategoryMainVO> categoryMainList() throws Exception;
	public CategoryMainVO categoryMainGetOne(int id) throws Exception;
	public List<CategorySubVO> categorySubList() throws Exception;
	public List<CategorySubVO> categorySubListById(int main_id) throws Exception;
	public CategorySubVO categorySubGetOne(int id) throws Exception;
	
	// category별 게시물 검색
	public List<PortRegVO> portfolioAll(SearchCriteria scri) throws Exception;
	public int portfolioAllCount(SearchCriteria scri) throws Exception;
	public List<PortRegVO> portfolioList(SearchCriteria scri) throws Exception;
	public int portfolioListCount(SearchCriteria scri) throws Exception;
	
	// Insert 
	public void portInsert(PortRegVO vo) throws Exception;

	//select
	public PortRegVO portfolioSelect(int portfolio_id) throws Exception;
	public MemberVO portfolioSeller(String user_id) throws Exception;
	
	public PortRegVO selectPortByCode(int portfoilo_id) throws Exception;

	//첨부 파일 업로드
	public void insertFile(Map<String, Object> map) throws Exception;
	
	public List<ReviewVO> selectReivew(int portfolio_id) throws Exception;
	
	public List<PortRegVO> trendPortfolio() throws Exception;
}
