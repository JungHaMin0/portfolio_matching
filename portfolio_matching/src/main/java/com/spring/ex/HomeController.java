package com.spring.ex;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.PortListService;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PageMaker;
import com.spring.ex.vo.SearchCriteria;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	PortListService service;

	
	 @RequestMapping(value = "index.do", method = RequestMethod.GET) 
	 public String index(HttpSession session, Model model) throws Exception {
		 MemberVO vo =(MemberVO)session.getAttribute("member");
		 model.addAttribute("login", vo);
		 model.addAttribute("portlist", service.Mainlist());
		 model.addAttribute("portlist2", service.Mainlist2());
		 model.addAttribute("portlist3", service.Mainlist3());
		 model.addAttribute("portlist4", service.Mainlist4());
		
		 List<Map<String, Object>> cate = service.selectlist();
	       
	        String aa = cate.get(0).get("a").toString();
	        int a = Integer.parseInt(aa);
	        String bb = cate.get(0).get("b").toString();
	        int b = Integer.parseInt(bb);
	        String cc = cate.get(0).get("c").toString();
	        int c = Integer.parseInt(cc);
	        String dd = cate.get(0).get("d").toString();
	        int d = Integer.parseInt(dd);
	        String ee = cate.get(0).get("e").toString();
	        int e = Integer.parseInt(ee);

	        model.addAttribute("a", a);
	        model.addAttribute("b", b);
	        model.addAttribute("c", c);
	        model.addAttribute("d", d);
	        model.addAttribute("e", e);
	  return "main/index"; 
	  }
	

	@RequestMapping(value = "MyPageDetail.do", method = RequestMethod.GET)
	public String MyPageDetail(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		return "main/MyPageDetail";
	}
/*
	@RequestMapping(value = "portlist.do", method = RequestMethod.GET)
	public String portlist(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		logger.info("portlist");
		model.addAttribute("portlist", service.list());
		System.out.println(model);

		return "category/portlist";
	}
*/
	
	// portlist
    @RequestMapping(value="portlist.do")
    public String listGET(SearchCriteria cri, Model model) throws Exception{
         
        int count = service.Count(cri);
        model.addAttribute("count", count);
         
        model.addAttribute("portlist", service.list(cri));
        PageMaker pageMaker = new PageMaker();
 
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(service.Count(cri));
         
        model.addAttribute("pageMaker", pageMaker);
       
        List<Map<String, Object>> cate = service.selectlist();
       
        String aa = cate.get(0).get("a").toString();
        int a = Integer.parseInt(aa);
        String bb = cate.get(0).get("b").toString();
        int b = Integer.parseInt(bb);
        String cc = cate.get(0).get("c").toString();
        int c = Integer.parseInt(cc);
        String dd = cate.get(0).get("d").toString();
        int d = Integer.parseInt(dd);
        String ee = cate.get(0).get("e").toString();
        int e = Integer.parseInt(ee);

        model.addAttribute("cate", service.selectlist());
        model.addAttribute("a", a);
        model.addAttribute("b", b);
        model.addAttribute("c", c);
        model.addAttribute("d", d);
        model.addAttribute("e", e);


      
        return "category/portlist";
    }

	//web
	@RequestMapping(value = "webCategory.do", method = RequestMethod.GET)
	public String webCategory(SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("webcg", service.listWeb(cri));

		 int count = service.CountWeb(cri);
	        model.addAttribute("count", count);
	         
	      
	        PageMaker pageMaker = new PageMaker();
	 
	        pageMaker.setCri(cri);
	        pageMaker.setTotalCount(service.CountWeb(cri));
	         
	        model.addAttribute("pageMaker", pageMaker);
	       
	        List<Map<String, Object>> cate = service.selectlist();
	       
	        String aa = cate.get(0).get("a").toString();
	        int a = Integer.parseInt(aa);
	        String bb = cate.get(0).get("b").toString();
	        int b = Integer.parseInt(bb);
	        String cc = cate.get(0).get("c").toString();
	        int c = Integer.parseInt(cc);
	        String dd = cate.get(0).get("d").toString();
	        int d = Integer.parseInt(dd);
	        String ee = cate.get(0).get("e").toString();
	        int e = Integer.parseInt(ee);

	        model.addAttribute("cate", service.selectlist());
	        model.addAttribute("a", a);
	        model.addAttribute("b", b);
	        model.addAttribute("c", c);
	        model.addAttribute("d", d);
	        model.addAttribute("e", e);


		return "category/webCategory";
	}
	
//app
	@RequestMapping(value = "appCategory.do", method = RequestMethod.GET)
	public String appCategory(SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("appcg", service.listApp(cri));
	
		 int count = service.CountApp(cri);
	        model.addAttribute("count", count);
	         
	      
	        PageMaker pageMaker = new PageMaker();
	 
	        pageMaker.setCri(cri);
	        pageMaker.setTotalCount(service.CountApp(cri));
	         
	        model.addAttribute("pageMaker", pageMaker);
	       
	        List<Map<String, Object>> cate = service.selectlist();
	       
	        String aa = cate.get(0).get("a").toString();
	        int a = Integer.parseInt(aa);
	        String bb = cate.get(0).get("b").toString();
	        int b = Integer.parseInt(bb);
	        String cc = cate.get(0).get("c").toString();
	        int c = Integer.parseInt(cc);
	        String dd = cate.get(0).get("d").toString();
	        int d = Integer.parseInt(dd);
	        String ee = cate.get(0).get("e").toString();
	        int e = Integer.parseInt(ee);

	        model.addAttribute("cate", service.selectlist());
	        model.addAttribute("a", a);
	        model.addAttribute("b", b);
	        model.addAttribute("c", c);
	        model.addAttribute("d", d);
	        model.addAttribute("e", e);


		return "category/appCategory";
	}
	
//design
	@RequestMapping(value = "designCategory.do", method = RequestMethod.GET)
	public String designCategory(SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("designcg", service.listDesign(cri));
	
		 int count = service.CountDesign(cri);
	        model.addAttribute("count", count);
	         
	        PageMaker pageMaker = new PageMaker();
	 
	        pageMaker.setCri(cri);
	        pageMaker.setTotalCount(service.CountDesign(cri));
	         
	        model.addAttribute("pageMaker", pageMaker);
	       
	        List<Map<String, Object>> cate = service.selectlist();
	       
	        String aa = cate.get(0).get("a").toString();
	        int a = Integer.parseInt(aa);
	        String bb = cate.get(0).get("b").toString();
	        int b = Integer.parseInt(bb);
	        String cc = cate.get(0).get("c").toString();
	        int c = Integer.parseInt(cc);
	        String dd = cate.get(0).get("d").toString();
	        int d = Integer.parseInt(dd);
	        String ee = cate.get(0).get("e").toString();
	        int e = Integer.parseInt(ee);

	        model.addAttribute("cate", service.selectlist());
	        model.addAttribute("a", a);
	        model.addAttribute("b", b);
	        model.addAttribute("c", c);
	        model.addAttribute("d", d);
	        model.addAttribute("e", e);

		return "category/designCategory";
	}
	
//photo
	@RequestMapping(value = "photoCategory.do", method = RequestMethod.GET)
	public String photoCategory(SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("photocg", service.listPhoto(cri));
		
		 int count = service.CountPhoto(cri);
	        model.addAttribute("count", count);
	         
	        PageMaker pageMaker = new PageMaker();
	 
	        pageMaker.setCri(cri);
	        pageMaker.setTotalCount(service.CountPhoto(cri));
	         
	        model.addAttribute("pageMaker", pageMaker);
	       
	        List<Map<String, Object>> cate = service.selectlist();
	       
	        String aa = cate.get(0).get("a").toString();
	        int a = Integer.parseInt(aa);
	        String bb = cate.get(0).get("b").toString();
	        int b = Integer.parseInt(bb);
	        String cc = cate.get(0).get("c").toString();
	        int c = Integer.parseInt(cc);
	        String dd = cate.get(0).get("d").toString();
	        int d = Integer.parseInt(dd);
	        String ee = cate.get(0).get("e").toString();
	        int e = Integer.parseInt(ee);

	        model.addAttribute("cate", service.selectlist());
	        model.addAttribute("a", a);
	        model.addAttribute("b", b);
	        model.addAttribute("c", c);
	        model.addAttribute("d", d);
	        model.addAttribute("e", e);


		return "category/photoCategory";
	}
}