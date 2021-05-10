package com.spring.ex;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PortController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "portfolio_detail.do", method = RequestMethod.GET)
	public String portfolio_detail(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "portfolio_page/portfolio_detail";
	}
	
	@RequestMapping(value = "portfolio_pur.do", method = RequestMethod.GET)
	public String portfolio_pur(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "portfolio_page/portfolio_pur";
	}
	
	@RequestMapping(value = "port.do", method = RequestMethod.GET)
	public String port(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "main/port";
	}
	
	@RequestMapping(value = "portfolio_register1.do", method = RequestMethod.GET)
	public String portfolio_register1(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "portfolio_page/portfolio_register1";
	}
	
	@RequestMapping(value = "portfolio_register2.do", method = RequestMethod.GET)
	public String portfolio_register2(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "portfolio_page/portfolio_register2";
	}
	
	@RequestMapping(value = "portfolio_register3.do", method = RequestMethod.GET)
	public String portfolio_register3(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "portfolio_page/portfolio_register3";
	}
	
	@RequestMapping(value = "portfolio_register4.do", method = RequestMethod.GET)
	public String portfolio_register4(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "portfolio_page/portfolio_register4";
	}
}
