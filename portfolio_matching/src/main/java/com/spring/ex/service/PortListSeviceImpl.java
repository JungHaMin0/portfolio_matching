package com.spring.ex.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.PortListDAO;
import com.spring.ex.vo.PortListVO;
import com.spring.ex.vo.SearchCriteria;

@Service
public class PortListSeviceImpl implements PortListService {

	@Autowired
	private PortListDAO dao;

	 @Override
	    public List<PortListVO> list(SearchCriteria cri) {
	        return dao.list(cri);
	    }
	 
	 @Override
	    public Integer Count(SearchCriteria cri) {
	        return dao.Count(cri);
	    }
	 @Override
	    public  List<Map<String,Object>> selectlist() {
	        return dao.selectlist();
	    }

	@Override
	public List<PortListVO> listWeb(SearchCriteria cri) {
		 return dao.listWeb(cri);
	}

	@Override
	public List<PortListVO> listApp(SearchCriteria cri) {
		 return dao.listApp(cri);
	}

	@Override
	public List<PortListVO> listDesign(SearchCriteria cri) {
		 return dao.listDesign(cri);
	}

	@Override
	public List<PortListVO> listPhoto(SearchCriteria cri) {
		 return dao.listPhoto(cri);
	}

	@Override
	public Integer CountWeb(SearchCriteria cri) {
		 return dao.CountWeb(cri);
	}

	@Override
	public Integer CountApp(SearchCriteria cri) {
		 return dao.CountApp(cri);
	}

	@Override
	public Integer CountDesign(SearchCriteria cri) {
		 return dao.CountDesign(cri);
	}

	@Override
	public Integer CountPhoto(SearchCriteria cri) {
		 return dao.CountPhoto(cri);
	}

	

}
