package com.spring.ex.dao;

import com.spring.ex.vo.MemberVO;

public interface MemberDAO {
	// ȸ������
	public void register(MemberVO vo) throws Exception;
	
	// ���̵� �ߺ� Ȯ��
	public int idChk(MemberVO vo) throws Exception;
	
	// �α���
	public MemberVO login(MemberVO vo) throws Exception;
}
