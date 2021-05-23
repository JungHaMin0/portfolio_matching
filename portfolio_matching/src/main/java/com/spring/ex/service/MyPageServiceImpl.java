package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.MyPageDAO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PmPurchaseVO;

@Service
public class MyPageServiceImpl implements MyPageService {
	@Inject MyPageDAO dao;
	
	@Override // pmPurchase ����Ʈ
	public List<PmPurchaseVO> pmPurchaseList() throws Exception {
		return dao.pmPurchaseList();
	}
	
	@Override // ȸ�� ���� ����
	public void userUpdate(MemberVO vo) throws Exception {
		dao.userUpdate(vo);
	}
	
	@Override // ȸ�� ���� ���� - ��й�ȣ
	public void userPwUpdate(MemberVO vo) throws Exception {
		dao.userPwUpdate(vo);
	}
	
	@Override // ȸ�� Ż��
	public void userDelete(MemberVO vo)throws Exception {
		dao.userDelete(vo);
	}
}