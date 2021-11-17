package com.spring.ex.inquiry.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.inquiry.domain.InquiryVO;
import com.spring.ex.inquiry.repository.InquiryDAO;

@Service
public class InquiryServiceImpl implements InquiryService {

	@Inject
	InquiryDAO inquiryDAO;
	
	@Override
	public int inquiryWrite(InquiryVO inquiryVO) throws Exception {
		return inquiryDAO.inquiryWrite(inquiryVO);
	}

}
