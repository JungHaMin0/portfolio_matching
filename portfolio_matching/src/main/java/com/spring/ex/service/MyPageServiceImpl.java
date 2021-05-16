package com.spring.ex.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.MyPageDAO;
import com.spring.ex.vo.MemberVO;

@Service
public class MyPageServiceImpl implements MyPageService {
	@Inject MyPageDAO dao;
	
	@Override
	public void userUpdate(MemberVO vo) throws Exception {
		dao.userUpdate(vo);
	}
	
	@Override
	public void userPwUpdate(MemberVO vo) throws Exception {
		dao.userPwUpdate(vo);
	}
	
	@Override
	public void userDelete(MemberVO vo)throws Exception {
		dao.userDelete(vo);
	}
}