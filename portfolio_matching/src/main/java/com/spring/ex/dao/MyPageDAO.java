package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PmPurchaseVO;

public interface MyPageDAO {
	// pmPurchase ����Ʈ
	public List<PmPurchaseVO> pmPurchaseList() throws Exception;
	
	// ȸ�� ���� ����
	public void userUpdate(MemberVO vo) throws Exception;

	// ȸ�� ���� ���� - ��й�ȣ ����
	public void userPwUpdate(MemberVO vo) throws Exception;
	
	// ȸ�� Ż��
	public void userDelete(MemberVO vo) throws Exception;
}