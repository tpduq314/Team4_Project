package com.naver.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naver.service.MemService;
import com.naver.vo.MemVO;

@Controller
public class MemberController {

	@Autowired
	private MemService memService;
	
	@RequestMapping(value="/login")
	public String login() {
		
		return "/login";
	}
	@RequestMapping(value="/login_mem")
	public String login_mem() {
		
		return "/login_mem";
	}
	
	//아이디 중복 검색
	@PostMapping("/mem_idcheck") //post로 접근하는 매핑주소를 처리
    public String mem_idcheck(String id,HttpServletResponse response) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		MemVO db_id = this.memService.idCheck(id);//아이디 중복 검색
		
		int re=-1;//중복 아이디가 없을 때 반환값
		
		if(db_id != null) {//중복 아이디가 있는 경우
			re=1;
		}
		
		out.println(re);//값 반환
		
		return null;
	}//mem_idcheck()

}