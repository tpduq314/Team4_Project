package com.naver.dao;

import java.util.List;

import com.naver.vo.ResVO;


public interface ResDAO {

	void insertRes(ResVO res);

	ResVO getResCont(String res_code);

	void updateRes(ResVO r);

	List<ResVO> getRestList(ResVO r);
}
