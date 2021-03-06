package com.naver.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	@RequestMapping(value="/index")
	public String index() {

		return "/index";
	}
	
	@RequestMapping(value="/logout")
	public String logout() {

		return "/logout";
	}
	

	/*
	 * @RequestMapping(value="/mypage") public String mypage(HttpSession
	 * session,HttpServletResponse response) throws Exception{
	 * 
	 * //response.setContentType("text/html;charset=UTF-8"); //PrintWriter
	 * out=response.getWriter(); String login_id=(String)session.getAttribute("id");
	 * 
	 * if(login_id == null) {
	 * 
	 * return "redirect:/login"; }else { return "/myPage"; } }
	 */

	@RequestMapping(value="/customer_service")
	public String customer_service(HttpSession session,HttpServletResponse response) throws Exception {
		//response.setContentType("text/html;charset=UTF-8");
		//PrintWriter out=response.getWriter();
		String login_id=(String)session.getAttribute("id");
		
		if(login_id == null) {
			//out.println("<script>");
			//out.println("alert('로그인 해주시기 바랍니다!');");
			//out.println("</script>");
			
			return "redirect:/login";
		}else {
			return "/customerService";
		}
		
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

	//로그인 인증
	@RequestMapping("/mem_login_ok")
	public String mem_login_ok(String login_id,String login_pwd,HttpSession session,HttpServletResponse response)
			throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();

		MemVO dm=this.memService.loginCheck(login_id);
		//가입 회원 1인 경우만 로그인 인증 처리

		if(dm==null) {
			out.println("<script>");
			out.println("alert('가입 안된 회원입니다!');");
			out.println("history.back();");
			out.println("</script>");
		}else {
			if(!dm.getMem_pwd().equals(PwdChange.getPassWordToXEMD5String(login_pwd))) {
				out.println("<script>");
				out.println("alert('비번이 다릅니다!');");
				out.println("history.go(-1);");
				out.println("</script>");
			}else {
				session.setAttribute("id",login_id);//세션 아이디 저장
			
				return "redirect:/index";
			}
		}
		return null;
	}//mem_login_ok()



	//회원가입 폼
	@RequestMapping("/login_mem") public String login_mem(Model mem) { String[]
			phone= {"010","011","019"};

	mem.addAttribute("phone",phone); 

	return "/login_mem"; }

	//회원 저장
	@RequestMapping("/mem_join_ok")
	public String mem_join_ok(MemVO mem) {//MemVO변수가 login_mem에서 받은 값 이름과 일치하면 mem에 저장
		mem.setMem_pwd(PwdChange.getPassWordToXEMD5String(mem.getMem_pwd()));//비번 암호화
		this.memService.insertMember(mem);

		return "redirect:/login";//완료 시 login으로 보냄
	}	
	
	//회원정보 수정폼
	@RequestMapping("/editPersonalInfo")
	public ModelAndView editPsonalInfo(HttpServletResponse response,HttpSession session)throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		String id=(String)session.getAttribute("id");
		
		if(id == null) {
			out.println("<script>");
			out.println("alert('다시 로그인 하세요!');");
			out.println("location='login';");
			out.println("</script>");
		}else {
			String[] mem_phone01= {};
			String[] mem_phone02= {};
			String[] mem_phone03= {};
			String[] mail_id= {};
			String[] mail_domain= {};
			MemVO mem=this.memService.getMem(id);
			
			ModelAndView em=new ModelAndView("/editPersonalInfo");
			em.addObject("mem_phone01",mem_phone01);
			em.addObject("mem_phone02",mem_phone02);
			em.addObject("mem_phone03",mem_phone03);
			em.addObject("mail_id",mail_id);
			em.addObject("mail_domain",mail_domain);
			em.addObject("m",mem);
			return em;
		}
		return null;
	}
	@RequestMapping("mem_edit_ok")
	public String mem_edit_ok(MemVO mem, HttpServletResponse response, HttpSession session) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        
        String id=(String)session.getAttribute("id");
    	if(id == null) {
			out.println("<script>");
			out.println("alert('다시 로그인 하세요!');");
			out.println("location='login';");
			out.println("</script>");
		}else {
			mem.setMem_id(id);
			mem.setMem_pwd(PwdChange.getPassWordToXEMD5String(mem.getMem_pwd()));
			mem.setMem_phone01(mem.getMem_phone01());
			mem.setMem_phone02(mem.getMem_phone02());
			mem.setMem_phone03(mem.getMem_phone03());
			mem.setMail_id(mem.getMail_id());
			mem.setMail_domain(mem.getMail_domain());
			this.memService.editMem(mem);
			
			out.println("<script>");
            out.println("alert('정보 수정했습니다!');");
            out.println("location='editPersonalInfo';");
            out.println("</script>");
		}
        return null;
	}
}













