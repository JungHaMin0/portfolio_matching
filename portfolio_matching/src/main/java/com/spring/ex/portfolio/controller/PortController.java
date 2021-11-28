package com.spring.ex.portfolio.controller;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.deal.service.OrderService;
import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.PageMaker;
import com.spring.ex.portfolio.domain.PortRegVO;
import com.spring.ex.portfolio.domain.PortfolioDTO;
import com.spring.ex.portfolio.domain.SearchCriteria;
import com.spring.ex.portfolio.service.PortRegService;
import com.spring.ex.review.service.ReviewServiceImpl;

@Controller
public class PortController {

	@Autowired
	private PortRegService portRegServiceImpl;

	@Autowired
	private OrderService orderService;
	
	// 포트폴리오 리스트
	@RequestMapping(value="portlist.do")
    public String list(@RequestParam int main_id, @RequestParam int id, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		model.addAttribute("categoryMainList", portRegServiceImpl.categoryMainList());
		model.addAttribute("categoryMainGetOne", portRegServiceImpl.categoryMainGetOne(main_id));
		model.addAttribute("categorySubGetOne", portRegServiceImpl.categorySubGetOne(id));
		model.addAttribute("categorySubListById", portRegServiceImpl.categorySubListById(main_id));
		
		if(id == 0) {
			model.addAttribute("portfolioList", portRegServiceImpl.portfolioAll(scri, main_id));
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(scri);
			pageMaker.setTotalCount(portRegServiceImpl.portfolioAllCount(scri, main_id));
			model.addAttribute("pageMaker", pageMaker);
		} else {
			model.addAttribute("portfolioList", portRegServiceImpl.portfolioList(scri,main_id, id));
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(scri);
			pageMaker.setTotalCount(portRegServiceImpl.portfolioListCount(scri, main_id, id));
			model.addAttribute("pageMaker", pageMaker);
		}
        return "portfolio_page/portlist";
    }
	
	// 포트폴리오 등록 폼
	@RequestMapping(value = "/PwriteForm.do")
	public String portfolio_register(Model model) throws Exception {
		model.addAttribute("categoryMainList", portRegServiceImpl.categoryMainList());
		model.addAttribute("categorySubListById", portRegServiceImpl.categorySubListById(1));
		return "portfolio_page/portfolio_register";
	}
	
	@ResponseBody
	@RequestMapping(value = "findCategorySub.do")
	public void findCategorySub(@RequestParam String param, HttpServletRequest req, HttpServletResponse res) throws Exception {
		int main_id = Integer.parseInt(param);
		List<CategorySubVO> categorySubList = portRegServiceImpl.categorySubListById(main_id);
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		
		for(int i=0; i<categorySubList.size(); i++) {
			HashMap<String, Object> mapList = new HashMap<String, Object>();
			mapList.put("id", categorySubList.get(i).getId());
			mapList.put("name", categorySubList.get(i).getName());
			jsonObject = new JSONObject(mapList);
			jsonArray.add(jsonObject);
		}
		
		JSONObject result = new JSONObject();
		result.put("result", jsonArray);
		result.put("cnt", categorySubList.size());
		
		res.setContentType("application/json; charset=utf-8");
		res.getWriter().write(result.toString());
	}

	// 포트폴리오 등록
	@RequestMapping(value = "/port_register.do", method = RequestMethod.POST)
	public String write(@RequestParam(required = false, value = "file") MultipartFile file, @ModelAttribute("portregVO") PortRegVO portregVO, MultipartHttpServletRequest req, HttpSession session) throws Exception {
		String base64 = "";
		byte[] b = file.getBytes();
		base64 = Base64.getEncoder().encodeToString(b);
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		portregVO.setPortfolio_userId(memberVO.getUser_id());
		portregVO.setPortfolio_Img(base64);
		portregVO.setPortfolio_regDate(Timestamp.valueOf(LocalDateTime.now()));
		System.out.println(req);
		portRegServiceImpl.portInsert(portregVO, req);
		return "redirect:/index.do";
	}
	
	// 포트폴리오 게시글 상세
	@RequestMapping(value = "/PortContent.do", method = { RequestMethod.POST, RequestMethod.GET })
	public String viewForm(@RequestParam int portfolio_id, Model model) throws Exception {
		PortfolioDTO portfolioDTO = portRegServiceImpl.portfolioSelect(portfolio_id);
		
		model.addAttribute("categoryMainList", portRegServiceImpl.categoryMainList());
		model.addAttribute("categorySubListById", portRegServiceImpl.categorySubListById(1));
		model.addAttribute("portfolio", portfolioDTO);
		model.addAttribute("review", portRegServiceImpl.selectReivew(portfolio_id));
		model.addAttribute("seller", portRegServiceImpl.portfolioSeller(portfolioDTO.getPortfolio_userId()));
		return "portfolio_page/portfolio_detail";
	}
	
}
