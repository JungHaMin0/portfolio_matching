package com.spring.ex.service;

import com.spring.ex.vo.MemberVO;

public interface MyPageService {
	// ȸ�� ���� ����
	public void userUpdate(MemberVO vo)throws Exception;
	
	// ȸ�� ���� ���� - ��й�ȣ ����
	public void userPwUpdate(MemberVO vo)throws Exception;
	
	// ȸ�� Ż��
	public void userDelete(MemberVO vo)throws Exception;
}