package com.spring.ex.service;

import java.util.List;

import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PmPurchaseVO;

public interface MyPageService {
	// ���� ���� ����Ʈ
	public List<PmPurchaseVO> pmPurchaseList() throws Exception;
	
	// ȸ�� ���� ����
	public void userUpdate(MemberVO vo)throws Exception;
	
	// ȸ�� ���� ���� - ��й�ȣ ����
	public void userPwUpdate(MemberVO vo)throws Exception;
	
	// ȸ�� Ż��
	public void userDelete(MemberVO vo)throws Exception;
}