package com.naver.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.naver.service.PackService;
import com.naver.service.ResService;
import com.naver.vo.PackVO;
import com.naver.vo.ResVO;

@Controller
public class ResController {

	@Autowired
	private ResService resService;
	
	@Autowired
	private PackService packService;
	
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
		return "redirect:/travel_reservation?res_code="+res_code+"&mem_id="+mem_id+"&pack_code="+res.getPack_code();
		//return null;
	}
	
	@RequestMapping("/travel_reservation")
	public String travel_reservation(@RequestParam("res_code") String res_code,@RequestParam("mem_id") String mem_id,@RequestParam("pack_code") String pack_code,Model m,@ModelAttribute ResVO r,@ModelAttribute PackVO p)throws Exception {
		
		r=this.resService.getResCont(res_code);
		p=this.packService.getPackageCont(pack_code);
		
		m.addAttribute("r",r);
		m.addAttribute("p",p);
		
		return "/travelReservation";
	}//travel_reservation
	
}
