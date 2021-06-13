package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.vo.ScrapVO;

public interface ScrapDAO {
	
	public List<ScrapVO> scrapList(String  scrap_userId) throws Exception;
	public void scrapInsert(ScrapVO scrapVO) throws Exception;
	public void scrapDelete(ScrapVO scrapVO) throws Exception;
 }
