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
import org.springframework.web.servlet.ModelAndView;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
   
   private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
   
   /**
    * Simply selects the home view to render by returning its name.
    */
      
      
      @RequestMapping(value = "index.do", method = RequestMethod.GET)
      public String index(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
      {
         response.setContentType("text/html; charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
              response.setCharacterEncoding("UTF-8");
         return "main/index";
      }
      
      @RequestMapping(value = "MyPage.do", method = RequestMethod.GET)
      public String MyPage(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
      {
         response.setContentType("text/html; charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
              response.setCharacterEncoding("UTF-8");
         return "main/MyPage";
      }
      
      @RequestMapping(value = "port.do", method = RequestMethod.GET)
      public String port(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
      {
         response.setContentType("text/html; charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
              response.setCharacterEncoding("UTF-8");
         return "main/port";
      }
      
      @RequestMapping(value = "MyPageDetail.do", method = RequestMethod.GET)
      public String MyPageDetail(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
      {
         response.setContentType("text/html; charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
              response.setCharacterEncoding("UTF-8");
         return "main/MyPageDetail";
      }
      @RequestMapping(value = "portlist.do", method = RequestMethod.GET)
      public String portlist(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
      {
         response.setContentType("text/html; charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
              response.setCharacterEncoding("UTF-8");
         return "main/portlist";
      }

}