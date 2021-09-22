package com.naver.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naver.service.ResService;
import com.naver.vo.ResVO;

@Controller
public class ResController {

	@Autowired
	private ResService resService;
	
	@RequestMapping("/res")
	public String res(ResVO res,HttpSession session) {
		Random random=new Random();
		int bound=10000;
		
		res.setRes_code(String.valueOf(random.nextInt(bound)));
		String mem_id=(String)session.getAttribute("id");
		
		this.resService.insertRes(res,mem_id);
		return "redirect:/travel_reservation";
	}
}
