package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.vo.PortRegVO;

public interface PortRegDAO {
	
	//Insert 
	public void portInsert(PortRegVO vo) throws Exception;

	//list
	List<PortRegVO> portList(PortRegVO vo) throws Exception;
	
	//select
	public PortRegVO portSelect(PortRegVO vo) throws Exception;
}
