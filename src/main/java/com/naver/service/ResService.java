package com.naver.service;

import com.naver.vo.ResVO;

public interface ResService {

	void insertRes(ResVO res);

	ResVO getResCont(String res_code);
	

}
