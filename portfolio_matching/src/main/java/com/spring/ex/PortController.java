package com.spring.ex;

import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.ex.service.PortRegService;
import com.spring.ex.service.PortRegServiceImpl;
import com.spring.ex.vo.PortRegVO;

@Controller
public class PortController {
	
	@Autowired
	private PortRegService portRegServiceImpl;


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
	


	//포트폴리오 등록1
	@RequestMapping(value = "/register1.do", method = RequestMethod.POST)
	public String register1(PortRegVO portRegVO) throws Exception{
		logger.info("register1");
		
		portRegServiceImpl.portInsert(portRegVO);
		
		return null;
	}
	
	//포트폴리오 등록2
	@RequestMapping(value="/register2.do", method = RequestMethod.POST)
	public String register1(@RequestParam("file") MultipartFile[] uploadFile, @ModelAttribute("portRegVO") PortRegVO portRegVO, Model model) throws Exception{
		System.out.println(portRegVO);
		String base64 = "";
    	for (MultipartFile multipartFile : uploadFile) {
    		byte[] b = multipartFile.getBytes();
    		base64 = Base64.getEncoder().encodeToString(b);
		}
    	portRegVO.setPort_Img(base64);
		portRegServiceImpl.portInsert(portRegVO);
		return "redirect:/portfolio_register3.do";
	}
	
	
	

	
	
	 
	
	
	
	
	
	//페이지 볼려고오오오
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
