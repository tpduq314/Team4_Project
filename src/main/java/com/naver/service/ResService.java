package com.naver.service;

import java.util.List;

import com.naver.vo.ResVO;

public interface ResService {

	void insertRes(ResVO res);

	ResVO getResCont(String res_code);

	void updateRes(ResVO r);

	List<ResVO> getResList(ResVO r);
	

}

