package com.spring.ex.inquiry.repository;

import com.spring.ex.inquiry.domain.InquiryVO;

public interface InquiryDAO {
	public int inquiryWrite(InquiryVO inquiryVO) throws Exception;
}
