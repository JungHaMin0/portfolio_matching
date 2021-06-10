package com.spring.ex.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.dao.PortRegDAO;
import com.spring.ex.util.UploadFileUtils;
import com.spring.ex.vo.PortRegVO;

@Service
public class PortRegServiceImpl implements PortRegService {
	@Resource(name="UploadFileUtils")
	private UploadFileUtils uploadFileUtils;
	
	@Inject PortRegDAO dao;
	
	@Override
	public void portInsert(PortRegVO vo, MultipartHttpServletRequest req) throws Exception {
		dao.portInsert(vo);
		
		List<Map<String, Object>> list = uploadFileUtils.parseInsertFileInfo(vo, req);
		int size= list.size();
		for(int i=0; i<size; i++) {
			dao.insertFile(list.get(i));
		}
	}

	@Override
	public List<PortRegVO> portList(PortRegVO vo) throws Exception {
		List<PortRegVO> list = null;
		list = dao.portList(vo);
		return list;
	}

	@Override
	public PortRegVO portSelect(PortRegVO vo) throws Exception {
		PortRegVO resultVO = dao.portSelect(vo);
		return resultVO;
		
	}

	@Override
	public PortRegVO selectPortByCode(int portfolio_id) throws Exception {
		return dao.selectPortByCode(portfolio_id);
	}
	


}
