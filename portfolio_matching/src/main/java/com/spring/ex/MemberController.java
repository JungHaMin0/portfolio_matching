package com.spring.ex;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.ex.service.MemberService;
import com.spring.ex.vo.MemberVO;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService service;

	// 로그인 get >> 페이지 이동
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String getLogin(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		return "member/login";
	}

	// 로그인 POST >> 로그인 기능
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String postLogin(MemberVO vo, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		HttpSession session = request.getSession();
		MemberVO login = service.login(vo);

		if (login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		} else {
			session.setAttribute("member", login);
		}

		System.out.println(login);

		return "redirect:index.do";
	}

	// 로그아웃
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		session.invalidate();

		return "redirect:index.do";
	}

	// 회원가입 get >> 페이지 이동
	@RequestMapping(value = "register.do", method = RequestMethod.GET)
	public String getRegister(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		return "member/register";
	}

	// 회원가입 post >> 회원가입 기능
	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		int result = service.idChk(vo);
		try {
			if (result == 1) {
				return "/member/register";
			} else if (result == 0) {
				service.register(vo);
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/login.do";
	}

	// 아이디 중복 확인
	@ResponseBody
	@RequestMapping(value = "idChk.do", method = RequestMethod.POST)
	public int idChk(MemberVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}
}