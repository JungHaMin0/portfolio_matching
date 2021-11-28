package com.spring.ex.portfolio.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.portfolio.domain.PortfolioDTO;
import com.spring.ex.portfolio.domain.SearchCriteria;
import com.spring.ex.portfolio.repository.PortRegDAO;
import com.spring.ex.review.domain.ReviewVO;
import com.spring.ex.util.UploadFileUtils;

@Service
public class PortRegServiceImpl implements PortRegService {
	@Resource(name = "UploadFileUtils")
	private UploadFileUtils uploadFileUtils;

	@Inject
	PortRegDAO dao;

	@Override
	public List<CategoryMainVO> categoryMainList() throws Exception {
		return dao.categoryMainList();
	}

	@Override
	public CategoryMainVO categoryMainGetOne(int id) throws Exception {
		return dao.categoryMainGetOne(id);
	}

	@Override
	public List<CategorySubVO> categorySubList() throws Exception {
		return dao.categorySubList();
	}

	@Override
	public List<CategorySubVO> categorySubListById(int main_id) throws Exception {
		return dao.categorySubListById(main_id);
	}

	@Override
	public CategorySubVO categorySubGetOne(int id) throws Exception {
		return dao.categorySubGetOne(id);
	}

	@Override
	public List<PortfolioDTO> portfolioAll(SearchCriteria scri, int main_id) throws Exception {
		scri.setMain_id(main_id);
		scri.setId(0);
		List<PortRegVO> portRegVOList = dao.portfolioAll(scri);

		List<PortfolioDTO> portfolioDTOList = new ArrayList<PortfolioDTO>();
		for (int i = 0; i < portRegVOList.size(); i++) {
			PortRegVO vo = portRegVOList.get(i);

			PortfolioDTO dto = convertToDto(vo);
			portfolioDTOList.add(dto);
		}
		return portfolioDTOList;
	}

	@Override
	public int portfolioAllCount(SearchCriteria scri, int main_id) throws Exception {
		scri.setMain_id(main_id);
		return dao.portfolioAllCount(scri);
	}

	@Override
	public List<PortfolioDTO> portfolioList(SearchCriteria scri, int main_id, int id) throws Exception {
		scri.setMain_id(main_id);
		scri.setId(id);
		List<PortRegVO> portRegVOList = dao.portfolioList(scri);

		List<PortfolioDTO> portfolioDTOList = new ArrayList<PortfolioDTO>();
		for (int i = 0; i < portRegVOList.size(); i++) {
			PortRegVO vo = portRegVOList.get(i);

			PortfolioDTO dto = convertToDto(vo);
			portfolioDTOList.add(dto);
		}
		return portfolioDTOList;
	}

	@Override
	public int portfolioListCount(SearchCriteria scri, int main_id, int id) throws Exception {
		scri.setMain_id(main_id);
		scri.setId(id);
		return dao.portfolioListCount(scri);
	}

	@Override
	public void portInsert(PortRegVO vo, MultipartHttpServletRequest req) throws Exception {
		dao.portInsert(vo);

		List<Map<String, Object>> list = uploadFileUtils.parseInsertFileInfo(vo, req);
		int size = list.size();
		for (int i = 0; i < size; i++) {
			dao.insertFile(list.get(i));
		}
	}

	@Override
	public PortfolioDTO portfolioSelect(int portfolio_id) throws Exception {
		PortRegVO resultVO = dao.portfolioSelect(portfolio_id);
		PortfolioDTO portfolioDTO = convertToDto(resultVO);

		return portfolioDTO;
	}
	
	@Override
	public MemberVO portfolioSeller(String user_id) throws Exception {
		return dao.portfolioSeller(user_id);
	}

	@Override
	public PortRegVO selectPortByCode(int portfolio_id) throws Exception {
		return dao.selectPortByCode(portfolio_id);
	}

	@Override
	public List<ReviewVO> selectReivew(int portfolio_id) throws Exception {
		return dao.selectReivew(portfolio_id);
	}


	@Override
	public List<PortfolioDTO> trendPortfolio() throws Exception {
		List<PortRegVO> portRegVOList = dao.trendPortfolio();

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
		
		dto.setPortfolio_category_main(dao.categoryMainGetOne(Integer.parseInt(vo.getPortfolio_category_main())));
		dto.setPortfolio_category_sub(dao.categorySubGetOne(Integer.parseInt(vo.getPortfolio_category_sub())));
		
		return dto;
	}
}
