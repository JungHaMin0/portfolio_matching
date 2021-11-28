package com.spring.ex.member.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.deal.domain.DealVO;
import com.spring.ex.deal.domain.Deal_PortVO;
import com.spring.ex.deal.domain.Deal_Port_InqVO;
import com.spring.ex.inquiry.domain.AnswerVO;
import com.spring.ex.inquiry.domain.InquiryVO;
import com.spring.ex.member.domain.Criteria;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.member.repository.MyPageDAO;
import com.spring.ex.portfolio.domain.PortfolioVO;
import com.spring.ex.review.domain.ReviewVO;
import com.spring.ex.scrap.domain.ScrapVO;

@Service
public class MyPageServiceImpl implements MyPageService {
	@Inject
	MyPageDAO dao;

	@Override // 구매 내역
	public List<Deal_PortVO> pmPurchaseList(Criteria cri) throws Exception {
		return dao.pmPurchaseList(cri);
	}
	
	@Override
	public int pmPurchaseListCount(Criteria cri) throws Exception {
		return dao.pmPurchaseListCount(cri);
	}

	@Override // 구매 내역 - 구매 확정 기능
	public void pmPurchaseConfirm(String deal_id) throws Exception {
		dao.pmPurchaseConfirm(deal_id);
	}

	@Override // 구매 내역 - 리뷰 중복 체크
	public int reviewChk(Map<String, String> map) throws Exception {
		return dao.reviewChk(map);
	}

	@Override // 구매 내역 - 리뷰 작성 기능
	public void pmPurchaseReview(ReviewVO reviewVO) throws Exception {
		dao.pmPurchaseReview(reviewVO);
	}
	
	@Override // 구매 내역 - 첨부파일 조회
	public List<Map<String, Object>> selectFileList(int file_portfolio_id) throws Exception {
		return dao.selectFileList(file_portfolio_id);
	}

	@Override // 구매 내역 - 첨부파일 다운로드
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		return dao.selectFileInfo(map);
	}
	
	@Override // 관심 상품
	public List<PortfolioVO> pmInterestList(Criteria cri) throws Exception {
		return dao.pmInterestList(cri);
	}
	
	@Override
	public int pmInterestListCount(Criteria cri) throws Exception {
		return dao.pmInterestListCount(cri);
	}
	
	@Override // 관심 상품 - 삭제 기능
	public void pmInterestDelete(ScrapVO scrapVO) throws Exception {
		dao.pmInterestDelete(scrapVO);
	}

	@Override // 문의 내역
	public List<Deal_Port_InqVO> pmInquiryList(Criteria cri) throws Exception {
		return dao.pmInquiryList(cri);
	}
	
	@Override
	public int pmInquiryListCount(Criteria cri) throws Exception {
		return dao.pmInquiryListCount(cri);
	}

	@Override // 문의 내역 - 작성 기능
	public void pmInquiryWrite(InquiryVO inquiryVO) throws Exception {
		dao.pmInquiryWrite(inquiryVO);
	}

	@Override // 문의 내역(구매) - 답변 읽기 기능1
	public InquiryVO pmInquiryRead(int inq_id) throws Exception {
		return dao.pmInquiryRead(inq_id);
	}

	@Override // 문의 내역(구매) - 답변 읽기 기능 2
	public AnswerVO pmAnswerRead(int inq_id) throws Exception {
		return dao.pmAnswerRead(inq_id);
	}

	@Override // 판매중
	public List<PortfolioVO> smSaleList(Criteria cri) throws Exception {
		return dao.smSaleList(cri);
	}
	
	@Override
	public int smSaleListCount(Criteria cri) throws Exception {
		return dao.smSaleListCount(cri);
	}
	
	@Override // 판매중 - 삭제
	public void smSaleDelete(int portfolio_id) throws Exception {
		dao.smSaleDelete(portfolio_id);
	}

	@Override // 거래 현황
	public List<Deal_PortVO> smDealList(int portfolio_id) throws Exception {
		return dao.smDealList(portfolio_id);
	}

	@Override // 거래 현황 - 작업 중으로 변경
	public void smDealWorking(int deal_id) throws Exception {
		dao.smDealWorking(deal_id);
	}

	@Override // 거래 현황 - 작업 완료로 변경
	public void smDealComplete(int deal_id) throws Exception {
		dao.smDealComplete(deal_id);
	}

	@Override // 수익 현황
	public List<Deal_PortVO> smProfitList(Criteria cri) throws Exception {
		return dao.smProfitList(cri);
	}
	
	@Override
	public int smProfitListCount(Criteria cri) throws Exception {
		return dao.smProfitListCount(cri);
	}
	
	@Override
	public List<DealVO> smProfitTotal(String user_id) throws Exception {
		return dao.smProfitTotal(user_id);
	}

	@Override // 문의 내역(판매)
	public List<Deal_Port_InqVO> smInquiryList(Criteria cri) throws Exception {
		return dao.smInquiryList(cri);
	}
	
	@Override
	public int smInquiryListCount(Criteria cri) throws Exception {
		return dao.smInquiryListCount(cri);
	}

	@Override // 문의 내역(판매) - 답변 하기
	public InquiryVO smInquiryRead(int inq_id) throws Exception {
		return dao.smInquiryRead(inq_id);
	}
	
	@Override // 문의 내역(판매) - 답변 여부 확인
	public int smAnswerChk(int inq_id) throws Exception {
		return dao.smAnswerChk(inq_id);
	}
	
	@Override // 문의 내역(판매) - 답변 하기 기능
	public void smAnswerWrite(AnswerVO answerVO) throws Exception {
		dao.smAnswerWrite(answerVO);
	}

	@Override // 내 정보 수정 - 수정 기능
	public void userUpdate(MemberVO vo) throws Exception {
		dao.userUpdate(vo);
	}

	@Override // 내 정보 수정 - 비밀번호 수정 기능
	public void userPwUpdate(MemberVO vo) throws Exception {
		dao.userPwUpdate(vo);
	}

	@Override // 회원 탈퇴 - 탈퇴 기능
	public void userDelete(MemberVO vo) throws Exception {
		dao.userDelete(vo);
	}
	
	@Override // 별점 총점
	public double totalRating(int portfolio_id) throws Exception {
		return dao.totalRating(portfolio_id);
	}


	


}