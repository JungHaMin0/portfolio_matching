package com.spring.ex.test;

import com.spring.ex.vo.MemberVO;

public interface TestMapper {
	String selectNow();
	MemberVO findById(String id);
}
