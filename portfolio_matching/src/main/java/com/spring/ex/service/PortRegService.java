package com.spring.ex.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.vo.PortRegVO;

public interface PortRegService {
	public void portInsert(PortRegVO vo, MultipartHttpServletRequest req) throws Exception;
	public List<PortRegVO> portList(PortRegVO vo) throws Exception;
	public PortRegVO portSelect(PortRegVO vo) throws Exception;
	public PortRegVO selectPortByCode(int portfolio_id) throws Exception;

}
