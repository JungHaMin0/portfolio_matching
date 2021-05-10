package com.spring.ex.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject SqlSession sqlSession;
	
	@Override
	public void register(MemberVO vo) throws Exception {
		sqlSession.insert("memberMapper.register", vo);
	}
}
