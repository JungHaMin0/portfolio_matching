package com.spring.ex.member.repository;

import java.util.List;

import com.spring.ex.member.domain.MemberVO;

public interface MemberDAO {
	// 회원 가입
	public void register(MemberVO vo) throws Exception;
	
	// 회원 가입 - 중복 체크
	public int idChk(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	public List<MemberVO> view();
}
