package com.spring.ex.admin.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.spring.ex.member.domain.MemberVO;


public class AdminInterceptor extends HandlerInterceptorAdapter {

 @Override
 public boolean preHandle(HttpServletRequest req,
    HttpServletResponse res, Object obj) throws Exception {
  
  HttpSession session = req.getSession();
  MemberVO member = (MemberVO)session.getAttribute("member");
  
  if(member == null || member.getUser_ref() != 1) {
   res.sendRedirect("login.do");
   return false;
  }
  
  return true;
 }
}