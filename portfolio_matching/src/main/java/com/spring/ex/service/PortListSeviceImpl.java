package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.PortListDAO;
import com.spring.ex.vo.PortListVO;

@Service
public class PortListSeviceImpl implements PortListService {

	@Inject
	private PortListDAO dao;

	@Override
	public List<PortListVO> list() throws Exception {
		return dao.list();
		
	}
	
}
