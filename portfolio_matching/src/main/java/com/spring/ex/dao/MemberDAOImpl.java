package com.spring.ex.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject SqlSession sqlSession;
	
	// 회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		sqlSession.insert("memberMapper.register", vo);
	}
	
	// 아이디 중복 확인
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = sqlSession.selectOne("memberMapper.idChk", vo);
		return result;
	}
	
	//로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return sqlSession.selectOne("memberMapper.login", vo);
	}
}