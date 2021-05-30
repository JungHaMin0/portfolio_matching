package com.spring.ex.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SessionSetting {
	public static void SessionCheck(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		
		if (session.getAttribute("login_result") == null) {
			PrintWriter pw = response.getWriter();
			pw.println("<script>alert('로그인후 이용해 주세요ㅇ_<');location.href='index.do'</script>");
			pw.flush();

			return;
		}
	}
}
