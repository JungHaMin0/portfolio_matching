package com.spring.ex.member.service;

import java.util.List;
import java.util.Map;

import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.deal.domain.Deal_PortVO;
import com.spring.ex.deal.domain.Deal_Port_InqVO;
import com.spring.ex.inquiry.domain.AnswerVO;
import com.spring.ex.inquiry.domain.InquiryVO;
import com.spring.ex.member.domain.Criteria;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.portfolio.domain.PortfolioVO;
import com.spring.ex.review.domain.ReviewVO;
import com.spring.ex.scrap.domain.ScrapVO;

public interface MyPageService {
	// 구매 내역
	public List<Deal_PortVO> pmPurchaseList(Criteria cri) throws Exception;
	
	public int pmPurchaseListCount(Criteria cri) throws Exception;

	// 구매 내역 - 구매 확정 기능
	public void pmPurchaseConfirm(String deal_id) throws Exception;

	// 구매 내역 - 리뷰 중복 체크
	public int reviewChk(Map<String, String> map) throws Exception;

	// 구매 내역 - 리뷰 작성 기능
	public void pmPurchaseReview(ReviewVO reviewVO) throws Exception;

	// 구매 내역 - 첨부파일 조회
	public List<Map<String, Object>> selectFileList(int file_portfolio_id) throws Exception;

	// 구매 내역 - 첨부파일 다운로드
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;

	// 관심 상품
	public List<PortfolioVO> pmInterestList(Criteria cri) throws Exception;
	
	public int pmInterestListCount(Criteria cri) throws Exception;
	
	// 관심 상품 - 삭제 기능
	public void pmInterestDelete(ScrapVO scrapVO) throws Exception;

	// 문의 내역(구매)
	public List<Deal_Port_InqVO> pmInquiryList(Criteria cri) throws Exception;
	
	public int pmInquiryListCount(Criteria cri) throws Exception;

	// 문의 내역(구매) - 작성 기능
	public void pmInquiryWrite(InquiryVO inquiryVO) throws Exception;

	// 문의 내역(구매) - 답변 읽기 기능 1
	public InquiryVO pmInquiryRead(int inq_id) throws Exception;

	// 문의 내역(구매) - 답변 읽기 기능 2
	public AnswerVO pmAnswerRead(int inq_id) throws Exception;

	// 판매중
	public List<PortfolioVO> smSaleList(Criteria cri) throws Exception;

	// 판매중 리스트 총 갯수
	public int smSaleListCount(Criteria cri) throws Exception;

	// 판매중 - 삭제
	public void smSaleDelete(int portfolio_id) throws Exception;

	// 거래 현황
	public List<Deal_PortVO> smDealList(int portfolio_id) throws Exception;

	// 거래 현황 - 작업 중으로 변경
	public void smDealWorking(int deal_id) throws Exception;

	// 거래 현황 - 작업 완료로 변경
	public void smDealComplete(int deal_id) throws Exception;

	// 수익 현황
	public List<Deal_PortVO> smProfitList(Criteria cri) throws Exception;
	
	public int smProfitListCount(Criteria cri) throws Exception;
	
	public List<DealVO> smProfitTotal(String user_id) throws Exception;

	// 문의 내역(판매)
	public List<Deal_Port_InqVO> smInquiryList(Criteria cri) throws Exception;
	
	public int smInquiryListCount(Criteria cri) throws Exception;
	
	// 문의 내역(판매) - 답변 하기
	public InquiryVO smInquiryRead(int inq_id) throws Exception;

	// 문의 내역(판매) - 답변 여부 확인
	public int smAnswerChk(int inq_id) throws Exception;

	// 문의 내역(판매) - 답변 하기 기능
	public void smAnswerWrite(AnswerVO answerVO) throws Exception;

	// 내 정보 수정 - 수정 기능
	public void userUpdate(MemberVO vo) throws Exception;

	// 내 정보 수정 - 비밀번호 수정 기능
	public void userPwUpdate(MemberVO vo) throws Exception;

	// 회원 탈퇴 - 탈퇴 기능
	public void userDelete(MemberVO vo) throws Exception;

	// 별점 총점
	public double totalRating(int portfolio_id) throws Exception;

}