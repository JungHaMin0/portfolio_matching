package com.spring.ex.member.controller.pm;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.member.service.MyPageService;

@Controller
public class PMFileController {
	@Inject
	MyPageService service;

	// 구매 내역 - 파일 다운로드
	@RequestMapping(value = "pmFile.do", method = RequestMethod.GET)
	public String pmFile(HttpServletRequest req, Model model) throws Exception {
		int file_portfolio_id = Integer.parseInt(req.getParameter("portfolio_id"));
		List<Map<String, Object>> fileList = service.selectFileList(file_portfolio_id);
		model.addAttribute("file", fileList);

		return "mypage/pmFile";
	}

	// 구매 내역 - 파일 다운로드 기능
	@RequestMapping(value = "pmFileDown.do", method = RequestMethod.POST)
	public void pmFileDown(@RequestParam Map<String, Object> map, HttpServletResponse response) throws Exception {
		System.out.println(map);
		Map<String, Object> resultMap = service.selectFileInfo(map);
		String storedFileName = (String) resultMap.get("file_stored_name");
		String originalFileName = (String) resultMap.get("file_org_name");

		byte fileByte[] = org.apache.commons.io.FileUtils.readFileToByteArray(new File(
				"C:\\Users\\jeong\\git\\portfolio_matching\\portfolio_matching\\src\\main\\webapp\\resources\\upload\\"
						+ storedFileName));
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition",
				"attachment; fileName=\"" + URLEncoder.encode(originalFileName, "UTF-8") + "\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}
}
