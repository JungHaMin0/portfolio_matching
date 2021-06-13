package com.spring.ex;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ex.service.PortRegService;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PortRegVO;

@Controller
public class PortController {

	@Autowired
	private PortRegService portRegServiceImpl;

	// 포트폴리오 등록
	@RequestMapping(value = "/port_register.do", method = RequestMethod.POST)
	public String write(@RequestParam(required = false, value = "file") MultipartFile file, @ModelAttribute("portregVO") PortRegVO portregVO,
			MultipartHttpServletRequest req, HttpSession session) throws Exception {
		String base64 = "";
		byte[] b = file.getBytes();
		base64 = Base64.getEncoder().encodeToString(b);
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		portregVO.setPortfolio_userId(memberVO.getUser_id());
		portregVO.setPortfolio_Img(base64);
		portregVO.setPortfolio_regDate(Timestamp.valueOf(LocalDateTime.now()));
		System.out.println(req);
		portRegServiceImpl.portInsert(portregVO, req);
		return "redirect:/portlist.do";
	}

	// 포트폴리오 게시글 상세
	@RequestMapping(value = "/PortContent.do", method = { RequestMethod.POST, RequestMethod.GET })
	public String viewForm(@ModelAttribute("portregVO") PortRegVO portregVO, Model model, HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		int portfolio_id = Integer.parseInt(request.getParameter("portfolio_id"));
		portregVO.setPortfolio_id(portfolio_id);
		PortRegVO resultVO = portRegServiceImpl.selectPortByCode(portfolio_id);
		model.addAttribute("result", resultVO);
		model.addAttribute("review", portRegServiceImpl.selectReivew(portfolio_id));
		return "portfolio_page/portfolio_detail";
	}

	@RequestMapping(value = "portfolio_pur.do", method = RequestMethod.GET)
	public String portfolio_pur(HttpServletRequest req, PortRegVO vo, Model model) throws Exception {
		int portfolio_id = Integer.parseInt(req.getParameter("portfolio_id"));
		vo = portRegServiceImpl.selectPortByCode(portfolio_id);
		model.addAttribute("portfolio", vo);
		return "portfolio_page/portfolio_pur";
	}

	@RequestMapping(value = "port.do", method = RequestMethod.GET)
	public String port(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		return "main/port";
	}

	// 등록 작성 폼
	@RequestMapping(value = "/PwriteForm.do")
	public String portfolio_register() throws Exception {

		return "portfolio_page/portfolio_register";
	}

	@RequestMapping(value = "portfolio_payment.do", method = RequestMethod.GET)
	public String portfolio_payment() throws Exception {
		return "portfolio_page/portfolio_payment";
	}

	@RequestMapping(value = "portfolio_payment_success")
	public String portfolio_payment_success() {

		return "portfolio_page/portfolio_payment_success";
	}

	@RequestMapping(value = "portfolio_payment_fail")
	public String portfolio_payment_fail() {
		return "portfolio_page/portfolio_payment_fail";
	}
}
