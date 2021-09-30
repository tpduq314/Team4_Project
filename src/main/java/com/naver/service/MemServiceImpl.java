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

	@Override
	public void insertMember(MemVO mem) {
		this.memDAO.insertMember(mem);
		
	}

	@Override
	public MemVO loginCheck(String login_id) {
		return this.memDAO.loginCheck(login_id);
	}

	@Override
	public void editMem(MemVO m) {
		this.memDAO.editMem(m);
		
	}

	@Override
	public MemVO getMem(String id) {
		return this.memDAO.getMem(id);
	}

}
