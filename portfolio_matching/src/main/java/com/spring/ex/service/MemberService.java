package com.spring.ex.service;

import com.spring.ex.vo.MemberVO;

public interface MemberService {
	// ȸ������
	public void register(MemberVO vo) throws Exception;
	
	// ���̵� �ߺ� Ȯ��
	public int idChk(MemberVO vo) throws Exception;
	
	// �α���
	public MemberVO login(MemberVO vo) throws Exception;
}
