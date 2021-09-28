package com.naver.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naver.dao.CliDAO;
import com.naver.vo.CliVO;

@Service
public class CliServiceImpl implements CliService{

	@Autowired
	private CliDAO cliDAO;

	@Override
	public void insertCli(CliVO cli) {
		this.cliDAO.insertCli(cli);
	}
}
