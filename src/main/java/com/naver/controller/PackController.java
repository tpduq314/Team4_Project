package com.naver.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.naver.service.HotelService;
import com.naver.service.LandService;
import com.naver.service.PackService;
import com.naver.vo.HotelVO;
import com.naver.vo.LandVO;
import com.naver.vo.PackVO;

@Controller
public class PackController {

	@Autowired
	private PackService packService;
	
	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private LandService landService;

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
			int totalCount=this.packService.getListCount(p);

			listM.addObject("totalCount",totalCount);

			List<PackVO> plist=this.packService.getPackageList(p);
			listM.addObject("plist",plist);
			listM.setViewName("/list");
			//return "/list";
			return listM;
		}
	}

	//지역 검색
	@RequestMapping("/search_city")
	public String search_city() {
		return "search_city";
	}//search_city

	
	@RequestMapping("/travel_description")
	public String travel_description(@RequestParam("pack_code") String pack_code,HttpServletRequest request,
			Model m,@ModelAttribute PackVO p,@ModelAttribute HotelVO h,@ModelAttribute LandVO l)throws Exception {
		
		p=this.packService.getPackageCont(pack_code);
		List<HotelVO> hlist=this.hotelService.getHotelList(h,pack_code);
<<<<<<< HEAD
		List<LandVO> llist=this.landService.getLandList(l,pack_code);
=======
>>>>>>> branch 'master' of https://github.com/tpduq314/Team4_Project.git
		
		m.addAttribute("p",p);
		m.addAttribute("hlist",hlist);
		m.addAttribute("llist",llist);

		
		return "/travelDescription";
	}
}
