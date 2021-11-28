package com.spring.ex.member.repository;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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

@Repository
public class MyPageDAOImpl implements MyPageDAO {

	@Inject
	SqlSession sqlSession;

	@Override // 구매 내역
	public List<Deal_PortVO> pmPurchaseList(Criteria cri) throws Exception {
		return sqlSession.selectList("mypageMapper.pmPurchase_list", cri);
	}
	
	public int pmPurchaseListCount(Criteria cri) throws Exception {
		return sqlSession.selectOne("mypageMapper.pmPurchaseListCount", cri);
	}

	@Override // 구매 내역 - 구매 확정 기능
	public void pmPurchaseConfirm(String deal_id) throws Exception {
		sqlSession.update("mypageMapper.pmPurchaseConfirm", deal_id);
	}

	@Override // 구매 내역 - 리뷰 중복 체크
	public int reviewChk(Map<String, String> map) throws Exception {
		return sqlSession.selectOne("mypageMapper.reviewChk", map);
	}

	@Override // 구매 내역 - 리뷰 작성 기능
	public void pmPurchaseReview(ReviewVO reviewVO) throws Exception {
		sqlSession.insert("mypageMapper.pmPurchaseReview", reviewVO);
	}
	
	@Override // 구매 내역 - 첨부파일 조회
	public List<Map<String, Object>> selectFileList(int file_portfolio_id) throws Exception {
		return sqlSession.selectList("mypageMapper.selectFileList", file_portfolio_id);
	}

	@Override // 구매 내역 - 첨부파일 다운로드
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		return sqlSession.selectOne("mypageMapper.selectFileInfo", map);
	}
	
	@Override // 관심 상품
	public List<PortfolioVO> pmInterestList(Criteria cri) throws Exception {
		return sqlSession.selectList("mypageMapper.pmInterestList", cri);
	}
	
	@Override
	public int pmInterestListCount(Criteria cri) throws Exception {
		return sqlSession.selectOne("mypageMapper.pmInterestListCount", cri);
	}

	@Override // 관심 상품 - 삭제 기능
	public void pmInterestDelete(ScrapVO scrapVO) throws Exception {
		sqlSession.delete("mypageMapper.pmInterestDelete", scrapVO);
	}

	@Override // 문의 내역(구매)
	public List<Deal_Port_InqVO> pmInquiryList(Criteria cri) throws Exception {
		return sqlSession.selectList("mypageMapper.pmInquiryList", cri);
	}
	
	@Override
	public int pmInquiryListCount(Criteria cri) throws Exception {
		return sqlSession.selectOne("mypageMapper.pmInquiryListCount", cri);
	}

	@Override // 문의 내역(구매) - 작성 기능
	public void pmInquiryWrite(InquiryVO inquiryVO) throws Exception {
		sqlSession.insert("mypageMapper.pmInquiryWrite", inquiryVO);
	}

	@Override // 문의 내역(구매) - 답변 읽기 기능1
	public InquiryVO pmInquiryRead(int inq_id) throws Exception {
		return sqlSession.selectOne("mypageMapper.pmInquiryRead", inq_id);
	}

	@Override // 문의 내역(구매) - 답변 읽기 기능 2
	public AnswerVO pmAnswerRead(int inq_id) throws Exception {
		return sqlSession.selectOne("mypageMapper.pmAnswerRead", inq_id);
	}

	@Override // 판매중
	public List<PortfolioVO> smSaleList(Criteria cri) throws Exception {
		return sqlSession.selectList("mypageMapper.smSaleList", cri);
	}
	
	@Override
	public int smSaleListCount(Criteria cri) throws Exception {
		return sqlSession.selectOne("mypageMapper.listCount", cri);
	}
	
	@Override // 판매중 - 삭제
	public void smSaleDelete(int portfolio_id) throws Exception {
		sqlSession.delete("mypageMapper.smSaleDelete", portfolio_id);
	}

	@Override // 거래 현황
	public List<Deal_PortVO> smDealList(int portfolio_id) throws Exception {
		return sqlSession.selectList("mypageMapper.smDealList", portfolio_id);
	}

	@Override // 거래 현황 - 작업 중으로 변경
	public void smDealWorking(int deal_id) throws Exception {
		sqlSession.update("mypageMapper.smDealWorking", deal_id);
	}

	@Override // 거래 현황 - 작업 완료로 변경
	public void smDealComplete(int deal_id) throws Exception {
		sqlSession.update("mypageMapper.smDealComplete", deal_id);
	}

	@Override // 수익 현황
	public List<Deal_PortVO> smProfitList(Criteria cri) throws Exception {
		return sqlSession.selectList("mypageMapper.smProfitList", cri);
	}
	
	@Override
	public int smProfitListCount(Criteria cri) throws Exception {
		return sqlSession.selectOne("mypageMapper.smProfitListCount", cri);
	}
	
	@Override
	public List<DealVO> smProfitTotal(String user_id) throws Exception {
		return sqlSession.selectList("mypageMapper.smProfitTotal", user_id);
	}

	@Override // 문의 내역(판매)
	public List<Deal_Port_InqVO> smInquiryList(Criteria cri) throws Exception {
		return sqlSession.selectList("mypageMapper.smInquiryList", cri);
	}
	
	@Override
	public int smInquiryListCount(Criteria cri) throws Exception {
		return sqlSession.selectOne("mypageMapper.smInquiryListCount", cri);
	}

	@Override // 문의 내역 - 답변하기
	public InquiryVO smInquiryRead(int inq_id) throws Exception {
		return sqlSession.selectOne("mypageMapper.smInquiryRead", inq_id);
	}

	@Override // 문의 내역(판매) - 답변 여부 확인
	public int smAnswerChk(int inq_id) throws Exception {
		return sqlSession.selectOne("mypageMapper.smAnswerChk", inq_id);
	}
	
	@Override // 문의 내역(판매) - 답변 하기 기능
	public void smAnswerWrite(AnswerVO answerVO) throws Exception {
		sqlSession.insert("mypageMapper.smAnswerWrite", answerVO);
	}

	@Override // 내 정보 수정 - 수정 기능
	public void userUpdate(MemberVO vo) throws Exception {
		sqlSession.update("mypageMapper.userUpdate", vo);
	}

	@Override // 내 정보 수정 - 비밀번호 수정 기능
	public void userPwUpdate(MemberVO vo) throws Exception {
		sqlSession.update("mypageMapper.userPwUpdate", vo);
	}

	@Override // 회원 탈퇴
	public void userDelete(MemberVO vo) throws Exception {
		sqlSession.delete("mypageMapper.userDelete", vo);
	}
	
	@Override // 별점 총점
	public double totalRating(int portfolio_id) throws Exception {
		return sqlSession.selectOne("mypageMapper.totalRating", portfolio_id);
	}

	
}