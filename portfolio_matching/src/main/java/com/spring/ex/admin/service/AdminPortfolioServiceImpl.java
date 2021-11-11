package com.spring.ex.admin.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.repository.AdminPortfolioDAO;
import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.portfolio.domain.PortfolioDTO;
import com.spring.ex.portfolio.domain.SearchCriteria;

@Service
public class AdminPortfolioServiceImpl implements AdminPortfolioService {
	@Inject
	AdminPortfolioDAO adminPortfolioDao;
	
	@Override
	public CategoryMainVO categoryMainGetOne(int id) throws Exception {
		return adminPortfolioDao.categoryMainGetOne(id);
	}

	@Override
	public CategorySubVO categorySubGetOne(int id) throws Exception {
		return adminPortfolioDao.categorySubGetOne(id);
	}
	
	@Override
	public List<PortfolioDTO> portfolioList() throws Exception {
		List<PortRegVO> portRegVOList = adminPortfolioDao.portfolioList();

		List<PortfolioDTO> portfolioDTOList = new ArrayList<PortfolioDTO>();
		for (int i = 0; i < portRegVOList.size(); i++) {
			PortRegVO vo = portRegVOList.get(i);

			PortfolioDTO dto = convertToDto(vo);
			portfolioDTOList.add(dto);
		}
		return portfolioDTOList;
	}
	
	public PortfolioDTO convertToDto(PortRegVO vo) throws Exception {

		PortfolioDTO dto = new PortfolioDTO();
		dto.setPortfolio_id(vo.getPortfolio_id());
		dto.setPortfolio_userId(vo.getPortfolio_userId());
		dto.setPortfolio_title(vo.getPortfolio_title());
		dto.setPortfolio_Img(vo.getPortfolio_Img());
		dto.setPortfolio_content(vo.getPortfolio_content());
		dto.setPortfolio_price(vo.getPortfolio_price());
		dto.setPortfolio_term(vo.getPortfolio_term());
		dto.setPortfolio_rating(vo.getPortfolio_rating());
		dto.setPortfolio_regDate(vo.getPortfolio_regDate());

		dto.setPortfolio_category_main(adminPortfolioDao.categoryMainGetOne(Integer.parseInt(vo.getPortfolio_category_main())));
		dto.setPortfolio_category_sub(adminPortfolioDao.categorySubGetOne(Integer.parseInt(vo.getPortfolio_category_sub())));

		return dto;
	}
}