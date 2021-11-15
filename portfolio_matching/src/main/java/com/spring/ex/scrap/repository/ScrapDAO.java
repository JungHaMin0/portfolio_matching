package com.spring.ex.scrap.repository;

import java.util.List;

import com.spring.ex.scrap.domain.ScrapVO;

public interface ScrapDAO {
	
	public List<ScrapVO> scrapList(String  scrap_userId) throws Exception;
	public int scrapCheck(ScrapVO scrapVO) throws Exception;
	public void scrapInsert(ScrapVO scrapVO) throws Exception;
	public void scrapDelete(ScrapVO scrapVO) throws Exception;
 }
