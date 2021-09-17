package com.naver.service;

import java.util.List;

import com.naver.vo.LandVO;

public interface LandService {
	
	List<LandVO> getLandList(LandVO l, String pack_code);
}
