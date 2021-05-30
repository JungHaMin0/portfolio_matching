package com.spring.ex.dao;

import java.util.List;
import java.util.Map;

import com.spring.ex.vo.AnswerVO;
import com.spring.ex.vo.Deal_PortVO;
import com.spring.ex.vo.Deal_Port_InqVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PortfolioVO;
import com.spring.ex.vo.ReviewVO;
import com.spring.ex.vo.ScrapVO;

public interface MyPageDAO {
	// 구매 내역
	public List<Deal_PortVO> pmPurchaseList(String user_id) throws Exception;

	// 구매 내역 - 구매 확정 기능
	public void pmPurchaseConfirm(String deal_id) throws Exception;

	// 구매 내역 - 리뷰 중복 체크
	public int reviewChk(Map<String, String> map) throws Exception;

	// 구매 내역 - 리뷰 작성 기능
	public void pmPurchaseReview(ReviewVO reviewVO) throws Exception;

	// 관심 상품
	public List<PortfolioVO> pmInterestList(String user_id) throws Exception;

	// 관심 상품 - 삭제 기능
	public void pmInterestDelete(ScrapVO scrapVO) throws Exception;

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

	// 거래 현황
	public List<Deal_PortVO> smDealList(int portfolio_id) throws Exception;

	// 거래 현황 - 작업 중으로 변경
	public void smDealWorking(int deal_id) throws Exception;

	// 거래 현황 - 작업 완료로 변경
	public void smDealComplete(int deal_id) throws Exception;

	// 수익 현황
	public List<Deal_PortVO> smProfitList(String user_id) throws Exception;

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