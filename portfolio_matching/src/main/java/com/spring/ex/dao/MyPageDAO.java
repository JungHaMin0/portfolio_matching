package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.vo.AnswerVO;
import com.spring.ex.vo.Deal_PortVO;
import com.spring.ex.vo.Deal_Port_InqVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PortfolioVO;

public interface MyPageDAO {
	// 구매 내역
	public List<Deal_PortVO> pmPurchaseList(String user_id) throws Exception;

	// 구매 내역 - 구매 확정 기능
	public void pmPurchaseConfirm(String deal_id) throws Exception;

	// 문의 내역(구매)
	public List<Deal_Port_InqVO> pmInquiryList(String user_id) throws Exception;

	// 문의 내역(구매) - 작성 기능
	public void pmInquiryWrite(InquiryVO inquiryVO) throws Exception;

	// 문의 내역(구매) - 답변 읽기 기능 1
	public InquiryVO pmInquiryRead(int inq_id) throws Exception;

	// 문의 내역(구매) - 답변 읽기 기능 2
	public AnswerVO pmAnswerRead(int inq_id) throws Exception;

	// 판매중
	public List<PortfolioVO> smSaleList(String user_id) throws Exception;

	// 문의 내역(판매)
	public List<Deal_Port_InqVO> smInquiryList(String user_id) throws Exception;

	// 문의 내역(판매) - 답변 하기
	public InquiryVO smInquiryRead(int inq_id) throws Exception;

	// 문의 내역(판매) - 답변 하기 기능
	public void smAnswerWrite(AnswerVO answerVO) throws Exception;

	// 내 정보 수정 - 수정 기능
	public void userUpdate(MemberVO vo) throws Exception;

	// 내 정보 수정 - 비밀번호 수정 기능
	public void userPwUpdate(MemberVO vo) throws Exception;

	// 회원 탈퇴 - 탈퇴 기능
	public void userDelete(MemberVO vo) throws Exception;
}