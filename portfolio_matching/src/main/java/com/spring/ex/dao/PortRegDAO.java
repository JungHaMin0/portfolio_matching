package com.spring.ex.dao;

import java.util.List;
import java.util.Map;

import com.spring.ex.vo.PortRegVO;

public interface PortRegDAO {
	
	//Insert 
	public void portInsert(PortRegVO vo) throws Exception;

	//list
	List<PortRegVO> portList(PortRegVO vo) throws Exception;
	
	//select
	public PortRegVO portSelect(PortRegVO vo) throws Exception;
	
	public PortRegVO selectPortByCode(int portfoilo_id) throws Exception;

	//첨부 파일 업로드
	public void insertFile(Map<String, Object> map) throws Exception;
}
