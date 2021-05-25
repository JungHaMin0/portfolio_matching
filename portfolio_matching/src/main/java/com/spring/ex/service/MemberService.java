package com.spring.ex.service;

import com.spring.ex.vo.MemberVO;

public interface MemberService {
	// 회원가입
	public void register(MemberVO vo) throws Exception;
	
	// 아이디 중복 확인
	public int idChk(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;
}
