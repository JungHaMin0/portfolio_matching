package com.spring.ex.dao;

import com.spring.ex.vo.MemberVO;

public interface MemberDAO {
	// ȸ������
	public void register(MemberVO vo) throws Exception;
}
