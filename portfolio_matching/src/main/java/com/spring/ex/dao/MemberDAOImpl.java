package com.spring.ex.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject SqlSession sqlSession;
	
	// ȸ������
	@Override
	public void register(MemberVO vo) throws Exception {
		sqlSession.insert("memberMapper.register", vo);
	}
	
	// ���̵� �ߺ� Ȯ��
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = sqlSession.selectOne("memberMapper.idChk", vo);
		return result;
	}
	
	//�α���
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return sqlSession.selectOne("memberMapper.login", vo);
	}
}