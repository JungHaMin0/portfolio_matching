package com.spring.ex.inquiry.service;

import java.util.List;

import com.spring.ex.inquiry.domain.AnswerVO;
import com.spring.ex.inquiry.domain.InquiryVO;

public interface InquiryService {
	public int inquiryWrite(InquiryVO inquiryVO) throws Exception;
}
