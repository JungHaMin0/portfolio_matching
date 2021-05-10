package com.spring.ex;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.MemberService;
import com.spring.ex.vo.MemberVO;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	MemberService service;
	
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String index(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "member/login";
	}

	// 회원가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		logger.info("get register");
		return "member/register";
	}
	
	// 회원가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post register");
		
		service.register(vo);
		
		return null;
	}
}