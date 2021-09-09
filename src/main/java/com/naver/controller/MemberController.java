package com.naver.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naver.service.MemService;
import com.naver.vo.MemVO;

import pwdconv.PwdChange;

@Controller
public class MemberController {

	@Autowired
	private MemService memService;
	
	@RequestMapping(value="/login")
	public String login() {
		
		return "/login";
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
	
	
	  //회원가입 폼
	  
	  @RequestMapping("/login_mem") public String login_mem(Model mem) { String[]
	  phone= {"010","011","019"};
	  
	  mem.addAttribute("phone",phone); 
	  
	  return "/login_mem"; }
	 
	//회원 저장
	@RequestMapping("/login_mem_ok")
	public String login_mem_ok(MemVO mem) {//MemVO변수가 login_mem에서 받은 값 이름과 일치하면 mem에 저장
		mem.setMem_pwd(PwdChange.getPassWordToXEMD5String(mem.getMem_pwd()));//비번 암호화
		this.memService.insertMember(mem);
		
		return "redirect:/login";//완료 시 login으로 보냄
	}	
}