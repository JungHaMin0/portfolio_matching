package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PmPurchaseVO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {
	
	@Inject SqlSession sqlSession;
	
	@Override // 거래 리스트
	public List<PmPurchaseVO> pmPurchaseList() throws Exception {
		return sqlSession.selectList("mypageMapper.pmPurchase_list");
	}
	
	@Override // 회원 정보 수정
	public void userUpdate(MemberVO vo) throws Exception {
		sqlSession.update("mypageMapper.userUpdate", vo);
	}
	
	@Override // 회원 정보 수정 - 비밀번호
	public void userPwUpdate(MemberVO vo) throws Exception {
		sqlSession.update("mypageMapper.userPwUpdate", vo);
	}
	
	@Override // 회원 탈퇴
	public void userDelete(MemberVO vo) throws Exception {
		sqlSession.delete("mypageMapper.userDelete", vo);
	}
}