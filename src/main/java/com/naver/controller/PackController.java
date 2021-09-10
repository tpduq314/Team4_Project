package com.naver.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.naver.service.PackService;

@Controller
public class PackController {
	
	@Autowired
	private PackService PackService;
}
