package com.spring.ex.service;

import java.util.List;
import java.util.Map;

import com.spring.ex.vo.PortListVO;
import com.spring.ex.vo.SearchCriteria;

public interface PortListService {

	public List<PortListVO> list(SearchCriteria cri);

	public Integer Count(SearchCriteria cri);
	public  List<Map<String,Object>> selectlist();
	 public List<PortListVO> Mainlist();
	 public List<PortListVO> Mainlist2();
	 public List<PortListVO> Mainlist3();
	 public List<PortListVO> Mainlist4();
	 public List<PortListVO> listWeb(SearchCriteria cri);
	 public List<PortListVO> listApp(SearchCriteria cri);
	 public List<PortListVO> listDesign(SearchCriteria cri);
	 public List<PortListVO> listPhoto(SearchCriteria cri);
	 public Integer CountWeb(SearchCriteria cri);
	 public Integer CountApp(SearchCriteria cri) ;
	 public Integer CountDesign(SearchCriteria cri) ;
	 public Integer CountPhoto(SearchCriteria cri) ;
}
