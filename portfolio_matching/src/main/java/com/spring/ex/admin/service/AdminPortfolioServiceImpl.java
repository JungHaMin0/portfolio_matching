package com.spring.ex.admin.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.repository.AdminPortfolioDAO;
import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.inquiry.domain.InquiryDTO;
import com.spring.ex.inquiry.domain.InquiryVO;
import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.portfolio.domain.PortfolioDTO;
import com.spring.ex.review.domain.ReviewVO;

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

	@Override
	public PortRegVO adminPortfolioImage(int portfolio_id) throws Exception {
		return adminPortfolioDao.adminPortfolioImage(portfolio_id);
	}
	
	@Override
	public PortRegVO adminPortfolioContent(int portfolio_id) throws Exception {
		return adminPortfolioDao.adminPortfolioContent(portfolio_id);
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

	@Override
	public int adminPortfolioDelete(int portfolio_id) throws Exception {
		
		return adminPortfolioDao.adminPortfolioDelete(portfolio_id);
	}

	@Override
	public PortfolioDTO adminPortfolioDetail(int portfolio_id) throws Exception {
		PortRegVO portRegVO =  adminPortfolioDao.adminPortfolioDetail(portfolio_id);
		return convertToDto(portRegVO);
	}

	@Override
	public int adminPortfolioAllSaleCount(int portfolio_id) throws Exception {
		return adminPortfolioDao.adminPortfolioAllSaleCount(portfolio_id);
	}

	@Override
	public int adminPortfolioAllSalePrice(int portfolio_id) throws Exception {
		return adminPortfolioDao.adminPortfolioAllSalePrice(portfolio_id);
	}

	@Override
	public int adminPortfolioAllReviewCount(int portfolio_id) throws Exception {
		return adminPortfolioDao.adminPortfolioAllReviewCount(portfolio_id);
	}

	@Override
	public int adminPortfolioAllInquiryCount(int portfolio_id) throws Exception {
		return adminPortfolioDao.adminPortfolioAllInquiryCount(portfolio_id);
	}

	@Override
	public List<DealVO> adminPortfolioRecentDeal(int portfolio_id) throws Exception {
		return adminPortfolioDao.adminPortfolioRecentDeal(portfolio_id);
	}

	@Override
	public List<ReviewVO> adminPortfolioRecentReview(int portfolio_id) throws Exception {
		return adminPortfolioDao.adminPortfolioRecentReview(portfolio_id);
	}

	@Override
	public List<InquiryDTO> adminPortfolioRecentInquiry(int portfolio_id) throws Exception {
		List<InquiryVO> inquiryVOList = adminPortfolioDao.adminPortfolioRecentInquiry(portfolio_id);
		
		List<InquiryDTO> inquiryDTOList = new ArrayList<InquiryDTO>();
		
		for (int i = 0; i < inquiryVOList.size(); i++) {
			InquiryVO vo = inquiryVOList.get(i);

			InquiryDTO dto = convertToInquiryDto(vo);
			inquiryDTOList.add(dto);
		}
		return inquiryDTOList;
	}

	@Override
	public int adminPortfolioAnsInq(int inq_id) throws Exception {
		return adminPortfolioDao.adminPortfolioAnsInq(inq_id);
	}
	
	public InquiryDTO convertToInquiryDto(InquiryVO vo) throws Exception {

		InquiryDTO dto = new InquiryDTO();
		dto.setInq_id(vo.getInq_id());
		dto.setInq_deal_id(vo.getInq_deal_id());
		dto.setInq_portfolio_id(vo.getInq_portfolio_id());
		dto.setInq_purUser(vo.getInq_purUser());
		dto.setInq_title(vo.getInq_title());
		dto.setInq_content(vo.getInq_content());
		dto.setInq_regDate(vo.getInq_regDate());
		
		dto.setInq_ans(adminPortfolioDao.adminPortfolioAnsInq(vo.getInq_id()));

		return dto;
	}
	
	

}