package com.spring.ex.dao;

import java.util.List;
import com.spring.ex.vo.PortListVO;

public interface PortListDAO {

	public List<PortListVO> list() throws Exception;
	
}
