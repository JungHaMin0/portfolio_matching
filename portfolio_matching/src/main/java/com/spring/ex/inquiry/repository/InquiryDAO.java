package com.spring.ex.inquiry.repository;

import java.util.List;

import com.spring.ex.inquiry.domain.AnswerVO;
import com.spring.ex.inquiry.domain.InquiryVO;

public interface InquiryDAO {
	public int inquiryWrite(InquiryVO inquiryVO) throws Exception;
}
