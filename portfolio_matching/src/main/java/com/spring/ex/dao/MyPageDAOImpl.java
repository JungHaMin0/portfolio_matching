package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PmPurchaseVO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {
	
	@Inject SqlSession sqlSession;
	
	@Override // �ŷ� ����Ʈ
	public List<PmPurchaseVO> pmPurchaseList() throws Exception {
		return sqlSession.selectList("mypageMapper.pmPurchase_list");
	}
	
	@Override // ȸ�� ���� ����
	public void userUpdate(MemberVO vo) throws Exception {
		sqlSession.update("mypageMapper.userUpdate", vo);
	}
	
	@Override // ȸ�� ���� ���� - ��й�ȣ
	public void userPwUpdate(MemberVO vo) throws Exception {
		sqlSession.update("mypageMapper.userPwUpdate", vo);
	}
	
	@Override // ȸ�� Ż��
	public void userDelete(MemberVO vo) throws Exception {
		sqlSession.delete("mypageMapper.userDelete", vo);
	}
}