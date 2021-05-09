package com.spring.ex.dao;

import com.spring.ex.vo.MemberVO;

public interface MemberDAO {
	// 회원가입
	public void register(MemberVO vo) throws Exception;
}
