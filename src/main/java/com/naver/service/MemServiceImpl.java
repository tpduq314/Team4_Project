package com.naver.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naver.dao.MemDAO;

import com.naver.vo.MemVO;

@Service
public class MemServiceImpl implements MemService {

	@Autowired
	private MemDAO memDAO;

	
	@Override
	public MemVO idCheck(String id) {
		return this.memDAO.idCheck(id);
		
	}

}
