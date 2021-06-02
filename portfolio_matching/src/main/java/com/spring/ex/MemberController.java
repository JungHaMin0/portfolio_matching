package com.spring.ex;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

	@Inject
	MemberService service;

<<<<<<< HEAD
	// 로그인
=======
	// �α��� get >> ������ �̵�
>>>>>>> refs/heads/hamin
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String getLogin() throws Exception {
		return "member/login";
	}

<<<<<<< HEAD
	// 로그인 - 기능
=======
	// �α��� POST >> �α��� ���
>>>>>>> refs/heads/hamin
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

<<<<<<< HEAD
	// 로그아웃
=======
>>>>>>> refs/heads/hamin
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		session.invalidate();

		return "redirect:index.do";
	}

<<<<<<< HEAD
	// 회원가입
=======
	// ȸ������ get >> ������ �̵�
>>>>>>> refs/heads/hamin
	@RequestMapping(value = "register.do", method = RequestMethod.GET)
	public String getRegister(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		return "member/register";
	}

<<<<<<< HEAD
	// 회원가입 - 기능
=======
	// ȸ������ post >> ȸ������ ���
>>>>>>> refs/heads/hamin
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

<<<<<<< HEAD
	// 회원가입 - 중복체크
=======
	// ���̵� �ߺ� Ȯ��
>>>>>>> refs/heads/hamin
	@ResponseBody
	@RequestMapping(value = "idChk.do", method = RequestMethod.POST)
	public int idChk(MemberVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}
}