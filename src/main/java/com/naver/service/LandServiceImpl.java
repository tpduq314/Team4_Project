package com.naver.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naver.dao.LandDAO;
import com.naver.vo.LandVO;

@Service
public class LandServiceImpl implements LandService {
	
	@Autowired
	private LandDAO landDAO;
	
	
	@Override
	public List<LandVO> getLandList(LandVO l, String pack_code) {
		return this.landDAO.getLandList(l,pack_code);
	}

}
