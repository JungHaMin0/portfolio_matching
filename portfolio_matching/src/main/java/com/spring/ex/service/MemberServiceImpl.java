package com.spring.ex.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.MemberDAO;
import com.spring.ex.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject MemberDAO dao;
	
	// ȸ�� ����
	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);
	}
	
	// ���̵� �ߺ� Ȯ��
	@Override
	public int idChk(MemberVO vo)throws Exception {
		int result = dao.idChk(vo);
		return result;
	}
	
	// �α���
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}
}