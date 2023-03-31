package com.spring.ex.member.controller.pm;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.inquiry.domain.InquiryVO;
import com.spring.ex.member.domain.Criteria;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.member.domain.PageMaker;
import com.spring.ex.member.service.MyPageService;

@Controller
public class PMInquiryController {
	@Inject
	MyPageService service;


	// 문의 내역(구매)
	@RequestMapping(value = "pmInquiry.do", method = RequestMethod.GET)
	public String pmInquiry(HttpSession session, Model model, Criteria cri) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		cri.setUser_id(vo.getUser_id());
		
		model.addAttribute("pmInquiryList", service.pmInquiryList(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.pmInquiryListCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		
		return "mypage/pmInquiry";
	}

	// 문의 내역(구매) - 문의 작성
	@RequestMapping(value = "pmInquiryWrite.do", method = RequestMethod.GET)
	public String getPmInquiryWrite(HttpServletRequest req, HttpSession session, Model model) throws Exception {
		String deal_id = req.getParameter("deal_id");
		String portfolio_title = req.getParameter("portfolio_title");
		MemberVO vo = (MemberVO) session.getAttribute("member");
		String user_id = vo.getUser_id();

		req.setAttribute("inq_deal_id", deal_id);
		req.setAttribute("portfolio_title", portfolio_title);
		req.setAttribute("inq_purUser", user_id);

		return "mypage/pmInquiryWrite";
	}

	// 문의 내역(구매) - 작성 기능
	@RequestMapping(value = "pmInquiryWrite.do", method = RequestMethod.POST)
	@ResponseBody
	public int postPmInquiryWrite(InquiryVO inquiryVO) throws Exception {
		int result;

		try {
			service.pmInquiryWrite(inquiryVO);
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}

	// 문의 내역(구매) - 답변 읽기 기능
	@RequestMapping(value = "pmInquiryRead.do", method = RequestMethod.GET)
	public String pmInquiryRead(HttpServletRequest req, Model model) throws Exception {

		int inq_id = Integer.parseInt(req.getParameter("inq_id"));
		String portfolio_title = req.getParameter("portfolio_title");

		req.setAttribute("portfolio_title", portfolio_title);
		model.addAttribute("pmInquiryRead", service.pmInquiryRead(inq_id));
		model.addAttribute("pmAnswerRead", service.pmAnswerRead(inq_id));

		return "mypage/pmInquiryRead";
	}
}
