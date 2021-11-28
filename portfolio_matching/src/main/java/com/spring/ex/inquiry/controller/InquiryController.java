package com.spring.ex.inquiry.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.inquiry.domain.InquiryVO;
import com.spring.ex.inquiry.service.InquiryService;
import com.spring.ex.member.domain.MemberVO;

@Controller
public class InquiryController {
	
	@Inject
	InquiryService inquiryService;
	
	@RequestMapping(value = "inquiryWriteForm.do", method = RequestMethod.GET)
	public String inquiryWriteForm(HttpServletRequest req, HttpSession session, Model model) throws Exception {

		int deal_id = 0;
		int portfolio_id = Integer.parseInt(req.getParameter("portfolio_id"));
		String portfolio_title = req.getParameter("portfolio_title");
		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();
		
		req.setAttribute("inq_deal_id", deal_id);
		req.setAttribute("portfolio_id", portfolio_id);
		req.setAttribute("portfolio_title", portfolio_title);
		req.setAttribute("inq_purUser", user_id);
		
		return "inquiry/inquiryWrite";
	}
	
	@RequestMapping(value = "inquiryWrite.do", method = RequestMethod.POST)
	@ResponseBody
	public int inquiryWrite(InquiryVO inquiryVO) throws Exception {

		return inquiryService.inquiryWrite(inquiryVO);
	}
}
