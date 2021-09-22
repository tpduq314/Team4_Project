package com.naver.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naver.dao.ResDAO;
import com.naver.vo.ResVO;

@Service
public class ResServiceImpl implements ResService {

	@Autowired
	private ResDAO resDAO;


	@Override
	public void insertRes(ResVO res, String mem_id) {
		this.resDAO.insertRes(res,mem_id);
		
	}
}
