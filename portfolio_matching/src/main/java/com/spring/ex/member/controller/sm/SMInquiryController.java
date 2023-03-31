package com.spring.ex.member.controller.sm;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.inquiry.domain.AnswerVO;
import com.spring.ex.member.domain.Criteria;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.member.domain.PageMaker;
import com.spring.ex.member.service.MyPageService;

@Controller
public class SMInquiryController {
	
	@Inject
	MyPageService service;

	// 문의 내역(판매)
	@RequestMapping(value = "smInquiry.do", method = RequestMethod.GET)
	public String smInquiry(HttpSession session, Model model, Criteria cri) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		cri.setUser_id(vo.getUser_id());

		model.addAttribute("smInquiryList", service.smInquiryList(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.smInquiryListCount(cri));
		model.addAttribute("pageMaker", pageMaker);

		return "mypage/smInquiry";
	}

	// 문의 내역(판매) - 답변 하기
	@RequestMapping(value = "smAnswerWrite.do", method = RequestMethod.GET)
	public String getSmAnswerWrite(HttpServletRequest req, HttpSession session, Model model) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();

		int inq_id = Integer.parseInt(req.getParameter("inq_id"));
		String portfolio_title = req.getParameter("porfolio_title");

		if (service.smAnswerChk(inq_id) == 1) {
			req.setAttribute("portfolio_title", portfolio_title);
			model.addAttribute("pmInquiryRead", service.pmInquiryRead(inq_id));
			model.addAttribute("pmAnswerRead", service.pmAnswerRead(inq_id));
			return "mypage/pmInquiryRead";
		} else {
			req.setAttribute("portfolio_title", portfolio_title);
			req.setAttribute("ans_saleUser", user_id);
			model.addAttribute("smInquiryRead", service.smInquiryRead(inq_id));
			return "mypage/smAnswerWrite";
		}
	}

	// 문의 내역(판매) - 답변 하기 기능
	@RequestMapping(value = "smAnswerWrite.do", method = RequestMethod.POST)
	@ResponseBody
	public int postSmAnswerWrite(AnswerVO answerVO) throws Exception {
		int result;
		try {
			service.smAnswerWrite(answerVO);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
			return result;
		}
		return result;
	}
}
