package com.spring.ex.admin.service;

import java.util.List;

import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.PortfolioDTO;

public interface AdminPortfolioService {
	public CategoryMainVO categoryMainGetOne(int id) throws Exception;
	public CategorySubVO categorySubGetOne(int id) throws Exception;
	public List<PortfolioDTO> portfolioList() throws Exception;
}
