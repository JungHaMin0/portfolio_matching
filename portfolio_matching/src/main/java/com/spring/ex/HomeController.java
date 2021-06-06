package com.spring.ex;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.PortListService;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	PortListService service;

	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String index(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		return "main/index";
	}

	@RequestMapping(value = "MyPageDetail.do", method = RequestMethod.GET)
	public String MyPageDetail(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		return "main/MyPageDetail";
	}

	@RequestMapping(value = "category.do", method = RequestMethod.GET)
	public String portlist(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		logger.info("portlist");
		model.addAttribute("portlist", service.list());
		System.out.println(model);

		return "category/category";
	}

	@RequestMapping(value = "webCategory.do", method = RequestMethod.GET)
	public String webCategory(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		logger.info("webcg");
		model.addAttribute("webcg", service.listWeb());
		System.out.println(model);

		return "category/webCategory";
	}

	@RequestMapping(value = "appCategory.do", method = RequestMethod.GET)
	public String appCategory(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		logger.info("appcg");
		model.addAttribute("appcg", service.listApp());
		System.out.println(model);

		return "category/appCategory";
	}

	@RequestMapping(value = "designCategory.do", method = RequestMethod.GET)
	public String designCategory(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		logger.info("designcg");
		model.addAttribute("designcg", service.listDesign());
		System.out.println(model);

		return "category/designCategory";
	}

	@RequestMapping(value = "photoCategory.do", method = RequestMethod.GET)
	public String photoCategory(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		logger.info("photocg");
		model.addAttribute("photocg", service.listPhoto());
		System.out.println(model);

		return "category/photoCategory";
	}
}