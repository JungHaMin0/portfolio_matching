package com.spring.ex.scrap.service;

import java.util.List;

import com.spring.ex.scrap.domain.ScrapVO;

public interface ScrapService {
 public List<ScrapVO> scrapList(String scrap_userId) throws Exception;
 public int scrapCheck(String userId, int portfolio_id) throws Exception;
 public void scrapInsert(String userId, int portfolio_id) throws Exception;
 public void scrapDelete(ScrapVO scrapVO) throws Exception;
}