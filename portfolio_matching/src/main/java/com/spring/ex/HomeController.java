package com.spring.ex;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.portfolio.service.PortRegService;

@Controller
public class HomeController {

	@Autowired
	private PortRegService portRegServiceImpl;

	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String index(HttpSession session, Model model) throws Exception {
		MemberVO vo = (MemberVO) session.getAttribute("member");
		model.addAttribute("login", vo);
		
		model.addAttribute("categoryMainList", portRegServiceImpl.categoryMainList());
		model.addAttribute("categorySubList", portRegServiceImpl.categorySubList());
		model.addAttribute("categorySubListById", portRegServiceImpl.categorySubListById(1));
		model.addAttribute("trendPortfolio", portRegServiceImpl.trendPortfolio());
		
		return "main/index";
	}

	@RequestMapping(value = "MyPageDetail.do", method = RequestMethod.GET)
	public String MyPageDetail(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		return "main/MyPageDetail";
	}
}