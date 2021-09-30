package com.naver.controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.naver.service.CliService;
import com.naver.service.PackService;
import com.naver.service.QaService;
import com.naver.service.ResService;

import com.naver.vo.CliVO;
import com.naver.vo.PackVO;
import com.naver.vo.QaVO;
import com.naver.vo.ResVO;

@Controller
public class ResController {

	@Autowired
	private ResService resService;
	
	@Autowired
	private PackService packService;
	
	@Autowired
	private CliService cliService;
	
	@Autowired
	private QaService qaService;
	
	@RequestMapping("/res")
	public String res(ResVO res,HttpSession session) {
		
		Random random=new Random();
		int bound=10000;
		String res_code=String.valueOf(random.nextInt(bound));
		res.setRes_code(res_code);
		
		String mem_id=(String)session.getAttribute("id");
		res.setMem_id(mem_id);
		
		//System.out.println("res_code ="+res.getRes_code());
		//System.out.println("mem_id ="+res.getMem_id());
		//System.out.println("res_count01 ="+res.getRes_count01());
		//System.out.println("res_count02 ="+res.getRes_count02());
		//System.out.println("res_count03 ="+res.getRes_count03());
		//System.out.println("res_total_price ="+res.getRes_total_price());
		
		this.resService.insertRes(res);
		
		session.setAttribute("res_code",res_code);
		
		return "redirect:/travel_reservation?res_code="+res_code+"&mem_id="+mem_id+"&pack_code="+res.getPack_code();
		//return null;
	}
	
	@RequestMapping("/travel_reservation")
	public String travel_reservation(@RequestParam("res_code") String res_code,@RequestParam("pack_code") String pack_code,Model m,@ModelAttribute ResVO r,@ModelAttribute PackVO p)throws Exception {
		
		r=this.resService.getResCont(res_code);
		p=this.packService.getPackageCont(pack_code);
		
		m.addAttribute("r",r);
		m.addAttribute("p",p);
		
		return "/travelReservation";
	}//travel_reservation
	
	@RequestMapping("/res_ok")
	public String res_ok(CliVO cli,HttpSession session,ResVO r) {
		
		String res_code=(String)session.getAttribute("res_code");
		cli.setRes_code(res_code);
		//System.out.println("res_code ="+cli.getRes_code());
		
		r.setRes_code(res_code);
		
		this.resService.updateRes(r);
		this.cliService.insertCli(cli);
		
		return "redirect:/travel_reservation_ok?res_code="+res_code;
	}
	
	@RequestMapping("/travel_reservation_ok")
	public String travel_reservation_ok(HttpSession session,@ModelAttribute ResVO r,@ModelAttribute PackVO p,Model m,@ModelAttribute CliVO c) {

		String res_code=(String)session.getAttribute("res_code");
		//String mem_id=(String)session.getAttribute("id");
		
		r=this.resService.getResCont(res_code);
		String pack_code=r.getPack_code();
		//System.out.println(pack_code);
		p=this.packService.getPackageCont(pack_code);
		c=this.cliService.getCliCont(res_code);
		
		m.addAttribute("c",c);
		m.addAttribute("r",r);
		m.addAttribute("p",p);
		
		return "/travelReservationOk";
	}
	
	@RequestMapping("/customer_service_ok")
	public String customer_service_ok(@ModelAttribute QaVO q, HttpServletResponse response, HttpSession session) throws IOException {

		String mem_id=(String)session.getAttribute("id");

		q.setMem_id(mem_id);

		this.qaService.insertQa(q);


		return "redirect:/mypage";
	}
	
	@RequestMapping("/mypage") 
	public ModelAndView  mypage(HttpSession session,@ModelAttribute QaVO q,@ModelAttribute ResVO r) {

		String mem_id=(String)session.getAttribute("id");

		q.setMem_id(mem_id);
		List<QaVO> qlist=this.qaService.getQaList(q);

		ModelAndView listQ=new ModelAndView();

		listQ.addObject("qlist",qlist);

		listQ.setViewName("/myPage");

		return listQ;
	}
}
