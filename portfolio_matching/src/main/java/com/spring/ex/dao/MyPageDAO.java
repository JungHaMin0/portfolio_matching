package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PmPurchaseVO;

public interface MyPageDAO {
	// pmPurchase 리스트
	public List<PmPurchaseVO> pmPurchaseList() throws Exception;
	
	// 회원 정보 수정
	public void userUpdate(MemberVO vo) throws Exception;

	// 회원 정보 수정 - 비밀번호 수정
	public void userPwUpdate(MemberVO vo) throws Exception;
	
	// 회원 탈퇴
	public void userDelete(MemberVO vo) throws Exception;
}