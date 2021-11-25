package com.spring.ex.inquiry.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.inquiry.domain.AnswerVO;
import com.spring.ex.inquiry.domain.InquiryVO;

@Repository
public class InquiryDAOImpl implements InquiryDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public int inquiryWrite(InquiryVO inquiryVO) throws Exception {
		return sqlSession.insert("inquiryMapper.inquiryWrite", inquiryVO);
	}
	
}
