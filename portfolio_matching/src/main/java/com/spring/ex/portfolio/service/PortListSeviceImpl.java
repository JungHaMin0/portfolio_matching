package com.spring.ex.portfolio.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.portfolio.domain.PortListVO;
import com.spring.ex.portfolio.domain.SearchCriteria;
import com.spring.ex.portfolio.repository.PortListDAO;

@Service
public class PortListSeviceImpl implements PortListService {

	@Autowired
	private PortListDAO dao;

	 @Override
	    public List<PortListVO> list(SearchCriteria cri) {
	        return dao.list(cri);
	    }
	 @Override
	    public List<PortListVO> Mainlist() {
	        return dao.Mainlist();
	    }
	 @Override
	    public List<PortListVO> Mainlist2() {
	        return dao.Mainlist2();
	    }
	 @Override
	    public List<PortListVO> Mainlist3() {
	        return dao.Mainlist3();
	    }
	 @Override
	    public List<PortListVO> Mainlist4() {
	        return dao.Mainlist4();
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
