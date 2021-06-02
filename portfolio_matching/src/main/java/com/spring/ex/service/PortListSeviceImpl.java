package com.spring.ex.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.PortListDAO;
import com.spring.ex.vo.PortListVO;

@Service
public class PortListSeviceImpl implements PortListService {

	@Autowired
	private PortListDAO dao;

	@Override
	public List<PortListVO> list() throws Exception {
		return dao.list();
	}
	
	@Override
	public List<PortListVO> listWeb() throws Exception {
		return dao.listWeb();
	}
	
	@Override
	public List<PortListVO> listApp() throws Exception {
		return dao.listApp();
	}
	
	@Override
	public List<PortListVO> listDesign() throws Exception {
		return dao.listDesign();
	}
	
	@Override
	public List<PortListVO> listPhoto() throws Exception {
		return dao.listPhoto();
	}
	
}
