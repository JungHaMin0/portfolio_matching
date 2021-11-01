package com.spring.ex.common.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.service.PortRegService;

@Controller
public class HeaderController {
	@Autowired
	PortRegService portRegService;
	
	@ResponseBody
	@RequestMapping(value="headerCategory.do")
	public void category(Model model, HttpServletResponse res) throws Exception {
		List<CategoryMainVO> categoryList = portRegService.categoryMainList();
		
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		
		for(int i=0; i<categoryList.size(); i++) {
			HashMap<String, Object> mapList = new HashMap<String, Object>();
			mapList.put("id", categoryList.get(i).getId());
			mapList.put("name", categoryList.get(i).getName());
			jsonObject = new JSONObject(mapList);
			jsonArray.add(jsonObject);
		}
		
		JSONObject headerCategoryList = new JSONObject();
		headerCategoryList.put("result", jsonArray);
		headerCategoryList.put("cnt", categoryList.size());
		
		res.setContentType("application/json; charset=utf-8");
		res.getWriter().write(headerCategoryList.toString());
	}
}