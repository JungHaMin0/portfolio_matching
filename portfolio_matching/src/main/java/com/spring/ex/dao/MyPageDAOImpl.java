package com.spring.ex.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {
	
	@Inject SqlSession sqlSession;
	
	@Override
	public void userUpdate(MemberVO vo) throws Exception {
		sqlSession.update("mypageMapper.userUpdate", vo);
	}
	
	@Override
	public void userPwUpdate(MemberVO vo) throws Exception {
		sqlSession.update("mypageMapper.userPwUpdate", vo);
	}
	
	@Override
	public void userDelete(MemberVO vo) throws Exception {
		sqlSession.delete("mypageMapper.userDelete", vo);
	}
}