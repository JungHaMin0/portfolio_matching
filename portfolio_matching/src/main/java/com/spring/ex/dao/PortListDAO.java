package com.spring.ex.dao;

import java.util.List;
import com.spring.ex.vo.PortListVO;

public interface PortListDAO {

	public List<PortListVO> list() throws Exception;

	public List<PortListVO> listWeb() throws Exception;

	public List<PortListVO> listApp() throws Exception;
	
	public List<PortListVO> listDesign() throws Exception;
	
	public List<PortListVO> listPhoto() throws Exception;
	
}
