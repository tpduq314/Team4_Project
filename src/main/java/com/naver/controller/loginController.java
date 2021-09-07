package com.naver.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class loginController {
	@RequestMapping(value="/login")
	public String login() {
		
		return "/login";
	}
	@RequestMapping(value="/login_mem")
	public String login_mem() {
		
		return "/login_mem";
	}
}