package com.naver.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.naver.service.MemService;
import com.naver.service.QaService;
import com.naver.vo.QaVO;

@Controller
public class QaController {

	@Autowired
	private QaService qaService;

	@Autowired
	MemService memService;

	@RequestMapping(value = "/customer_service_ok", method = RequestMethod.POST)
	public ModelAndView customer_service_ok(@ModelAttribute QaVO q, HttpServletResponse response, HttpSession session) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		/* PrintWriter out = response.getWriter(); */
		String mem_id=(String)session.getAttribute("id");
		
		q.setMem_id(mem_id);
		
		this.qaService.insertQa(q);
		
		/*QaVO res_code = this.qaService.getQaCont(q.getRes_code());

		
		 * if(!res_code.getRes_code().equals(q.getRes_code())) {
		 * out.println("<script>alert('상품코드가 틀립니다');</script>"); out.flush(); return
		 * "redirect:/customerService"; }
		 */

		return new ModelAndView("redirect:/mypage");
	}

	
	
	  @RequestMapping(value="/mypage") 
	  public String mypage(HttpSession session,@ModelAttribute QaVO q) {
	  
	  String mem_id=(String)session.getAttribute("id");
	  
	  List<QaVO> qlist=this.qaService.getQaList(q);
	  
	  ModelAndView listQ=new ModelAndView();
	  
	  listQ.addObject("qlist",qlist);
	  
	  listQ.setViewName("/mypage");
	  
	  return null;
	  }
}













