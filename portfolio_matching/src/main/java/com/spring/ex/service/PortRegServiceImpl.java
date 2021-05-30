package com.spring.ex.service;

import java.util.List;

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

	@Override
	public List<PortRegVO> portList(PortRegVO vo) throws Exception {
		List<PortRegVO> list = null;
		list = dao.portList(vo);
		return list;
	}

	@Override
	public PortRegVO portSelect(PortRegVO vo) throws Exception {
		PortRegVO resultVO = dao.portSelect(vo);
		return resultVO;
		
	}


}
