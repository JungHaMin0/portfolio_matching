package com.spring.ex.scrap.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.scrap.service.ScrapService;

@Controller
public class ScrapController {

	@Autowired
	private ScrapService scrapService;
	
	@ResponseBody
	@RequestMapping(value = "/Scrap.do")
	public int scrapList(@RequestParam int portfolio_id, HttpSession session) throws Exception {
		MemberVO vo = (MemberVO) session.getAttribute("member");
		String userId = vo.getUser_id();
		
		int result = scrapService.scrapCheck(userId, portfolio_id);
		
		if(result == 0) {
			scrapService.scrapInsert(userId, portfolio_id);
			return 1;
		} else if(result == 1) {
			return 2;
		} else {
			return 0;
		}
	}

}
