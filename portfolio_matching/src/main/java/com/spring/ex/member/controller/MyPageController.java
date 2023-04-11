package com.spring.ex.member.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.member.service.MyPageService;

@Controller
public class MyPageController {

	@Inject
	MyPageService service;


	// 내 정보 수정
	@RequestMapping(value = "userMod.do", method = RequestMethod.GET)
	public String getUserMod() throws Exception {
		return "mypage/userMod";
	}

	// 내 정보 수정 - 수정 기능
	@RequestMapping(value = "userMod.do", method = RequestMethod.POST)
	public String postUserMod(MemberVO vo, HttpSession session) throws Exception {
		service.userUpdate(vo);

		session.invalidate();

		return "redirect:/index.do";
	}

	// 내 정보 수정 - 비밀번호 수정 기능
	@RequestMapping(value = "userPwMod.do", method = RequestMethod.POST)
	public String postUserPwMod(MemberVO vo, HttpSession session) throws Exception {
		service.userPwUpdate(vo);

		session.invalidate();

		return "redirect:/index.do";
	}

	// 회원 탈퇴
	@RequestMapping(value = "userDel.do", method = RequestMethod.GET)
	public String getUserDel() throws Exception {
		return "mypage/userDel";
	}

	// 회원 탈퇴 - 탈퇴 기능
	@RequestMapping(value = "userDelete.do", method = RequestMethod.GET)
	public String UserDelete(MemberVO vo, HttpSession session) throws Exception {
		MemberVO member = (MemberVO) session.getAttribute("member");
		service.userDelete(member);

		session.invalidate();
		return "redirect:/index.do";
	}
}
