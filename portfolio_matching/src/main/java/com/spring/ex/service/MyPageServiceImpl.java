package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.MyPageDAO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PmPurchaseVO;

@Service
public class MyPageServiceImpl implements MyPageService {
	@Inject MyPageDAO dao;
	
	@Override // pmPurchase 리스트
	public List<PmPurchaseVO> pmPurchaseList() throws Exception {
		return dao.pmPurchaseList();
	}
	
	@Override // 회원 정보 수정
	public void userUpdate(MemberVO vo) throws Exception {
		dao.userUpdate(vo);
	}
	
	@Override // 회원 정보 수정 - 비밀번호
	public void userPwUpdate(MemberVO vo) throws Exception {
		dao.userPwUpdate(vo);
	}
	
	@Override // 회원 탈퇴
	public void userDelete(MemberVO vo)throws Exception {
		dao.userDelete(vo);
	}
}