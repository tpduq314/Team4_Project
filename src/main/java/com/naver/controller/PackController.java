package com.naver.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.naver.service.PackService;
import com.naver.vo.PackVO;

@Controller
public class PackController {
	
	@Autowired
	private PackService packService;
	
	//패키지 여행 리스트
		@RequestMapping("/list")
		public ModelAndView list(HttpServletResponse response,HttpSession session,HttpServletRequest request,@ModelAttribute PackVO p)throws Exception {
			response.setContentType("text/html;charset=UTF-8");

			//세션으로 아이디 값 받아오기
			String login_id=(String)session.getAttribute("id");

			ModelAndView listM=new ModelAndView();

			if(login_id == null) {
				//script 형식 적용 안됨		
				listM.setViewName("/login");
				return listM;
				//return "redirect:/login";
			}else {
				List<PackVO> plist=this.packService.getPackageList(p);
				listM.addObject("plist",plist);
				listM.setViewName("/list");
				return listM;
				//return "/list";	
			}
		}
}