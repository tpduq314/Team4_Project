package com.naver.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.naver.service.QaService;
import com.naver.vo.QaVO;

@Controller
public class QaController {
		
	@Autowired 
	private QaService qaService;
	
	@RequestMapping(value="/customer_service_ok",method=RequestMethod.POST)
	public ModelAndView customer_service_ok(@ModelAttribute QaVO q,HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
		
		this.qaService.insertQa(q);
		
		/*
		 * QaVO res_code=this.qaService.getQ if()
		 */
		return new ModelAndView("redirect:/mypage");
	}
}














