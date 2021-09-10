package com.naver.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naver.dao.PackDAO;

@Service
public class PackServiceImpl implements PackService {
	
	@Autowired
	private PackDAO PackDAO;
}
