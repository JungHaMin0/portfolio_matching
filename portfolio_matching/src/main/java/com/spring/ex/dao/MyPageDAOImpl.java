package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.AnswerVO;
import com.spring.ex.vo.DealVO;
import com.spring.ex.vo.Deal_PortVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.Deal_Port_InqVO;
import com.spring.ex.vo.PortfolioVO;
import com.spring.ex.vo.ReviewVO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {

	@Inject
	SqlSession sqlSession;

	@Override // 구매 내역
	public List<Deal_PortVO> pmPurchaseList(String user_id) throws Exception {
		return sqlSession.selectList("mypageMapper.pmPurchase_list", user_id);
	}

	@Override // 구매 내역 - 구매 확정 기능
	public void pmPurchaseConfirm(String deal_id) throws Exception {
		sqlSession.update("pmPurchaseConfirm", deal_id);
	}
	
	@Override // 구매 내역 - 리뷰 작성 기능
	public void pmPurchaseReview(ReviewVO reviewVO) throws Exception {
		sqlSession.insert("pmPurchaseReview", reviewVO);
	}

	@Override // 관심 상품
	public List<PortfolioVO> pmInterestList(String user_id) throws Exception {
		return sqlSession.selectList("mypageMapper.pmInterestList", user_id);
	}
	
	@Override // 문의 내역(구매)
	public List<Deal_Port_InqVO> pmInquiryList(String user_id) throws Exception {
		return sqlSession.selectList("mypageMapper.pmInquiryList", user_id);
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
	public List<PortfolioVO> smSaleList(String user_id) throws Exception {
		return sqlSession.selectList("mypageMapper.smSaleList", user_id);
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
	public List<Deal_PortVO> smProfitList(String user_id) throws Exception {
		return sqlSession.selectList("mypageMapper.smProfitList", user_id);
	}

	@Override // 문의 내역(판매)
	public List<Deal_Port_InqVO> smInquiryList(String user_id) throws Exception {
		return sqlSession.selectList("mypageMapper.smInquiryList", user_id);
	}

	@Override // 문의 내역 - 답변하기
	public InquiryVO smInquiryRead(int inq_id) throws Exception {
		return sqlSession.selectOne("mypageMapper.smInquiryRead", inq_id);
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
}