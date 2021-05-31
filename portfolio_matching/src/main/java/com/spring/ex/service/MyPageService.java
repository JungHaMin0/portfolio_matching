package com.spring.ex.service;

import com.spring.ex.vo.MemberVO;

public interface MyPageService {
	// 회원 정보 수정
	public void userUpdate(MemberVO vo)throws Exception;
	
	// 회원 정보 수정 - 비밀번호 수정
	public void userPwUpdate(MemberVO vo)throws Exception;
	
	// 회원 탈퇴
	public void userDelete(MemberVO vo)throws Exception;
}