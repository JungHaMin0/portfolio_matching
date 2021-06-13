package com.spring.ex;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.service.ScrapService;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.ScrapVO;

@Controller
public class ScrapController {
	 
	@Autowired
	private ScrapService service;
	
	  @RequestMapping(value = "/pmScarp.do") 
	  public String scrapList(Model model, HttpServletRequest request, HttpSession session) throws Exception {
	  MemberVO vo = (MemberVO) session.getAttribute("member");
	  String scrap_userId = vo.getUser_id();
	  String num = ""; 
	  if (null != request.getParameter("num")) { 
	  num = (String) request.getParameter("num");
	  
	  int scrap_portfolio_id = Integer.parseInt(num);
	  
	  ScrapVO scrapVO = new ScrapVO();
	  scrapVO.setScrap_portfolio_id(scrap_portfolio_id);
	  scrapVO.setScrap_userId(scrap_userId);
	  
	  service.scrapInsert(scrapVO); 
	  } 
	  //List<ScrapVO> list = service.scrapList(scrap_userId);
	  
	  //model.addAttribute("m_num", scrap_userId); 
	  //model.addAttribute("list", list);
	  return "redirect:pmInterest.do"; 
	  }
	 
}
