package com.spring.ex.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.PortRegDAO;
import com.spring.ex.vo.PortRegVO;

@Service
public class PortRegServiceImpl implements PortRegService {
	
	@Inject PortRegDAO dao;
	
	@Override
	public void portInsert(PortRegVO vo) throws Exception {
		dao.portInsert(vo);
	}

}
