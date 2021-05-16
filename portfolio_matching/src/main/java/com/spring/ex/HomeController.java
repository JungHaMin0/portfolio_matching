package com.spring.ex;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.PortableServer.Servant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ex.service.PortListService;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
   
   private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
   
   /**
    * Simply selects the home view to render by returning its name.
    */
      
	  @Inject
	  PortListService service;
   
      @RequestMapping(value = "index.do", method = RequestMethod.GET)
      public String index(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
      {
         response.setContentType("text/html; charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
              response.setCharacterEncoding("UTF-8");
         return "main/index";
      }
      
      @RequestMapping(value = "MyPageDetail.do", method = RequestMethod.GET)
      public String MyPageDetail(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
      {
         response.setContentType("text/html; charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
              response.setCharacterEncoding("UTF-8");
         return "main/MyPageDetail";
      }
      
	/*
	 * @RequestMapping(value = "portlist.do", method = RequestMethod.GET) public
	 * String portlist(HttpServletRequest request, HttpServletResponse response,
	 * Model model)throws Exception {
	 * response.setContentType("text/html; charset=UTF-8");
	 * request.setCharacterEncoding("UTF-8");
	 * response.setCharacterEncoding("UTF-8"); return "main/portlist"; }
	 */
      
      @RequestMapping(value = "category.do", method = RequestMethod.GET)
      public String category(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
      {
    	  
    	  logger.info("portlist");
    	  model.addAttribute("portlist", service.list());
    	  System.out.println(model);
    	  
         return "category/category";
      }

}