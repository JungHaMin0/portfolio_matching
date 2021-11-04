package com.spring.ex;

import com.spring.ex.member.domain.MemberVO;

public class LoginContext {
	private static ThreadLocal<MemberVO> context;

	public static void set(MemberVO vo) {
		context.set(vo);
	}
	
	public static MemberVO get() {
		return context.get();
	}
	
}
