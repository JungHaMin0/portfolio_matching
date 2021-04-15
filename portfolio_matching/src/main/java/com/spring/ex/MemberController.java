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
public class MemberController {
   
   private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
   
      @RequestMapping(value = "login.do", method = RequestMethod.GET)
      public String index(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
      {
         response.setContentType("text/html; charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
              response.setCharacterEncoding("UTF-8");
         return "member/login";
      }
}