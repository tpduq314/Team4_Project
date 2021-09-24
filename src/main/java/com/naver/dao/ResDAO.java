package com.naver.dao;

import com.naver.vo.ResVO;

public interface ResDAO {

	void insertRes(ResVO res);

	ResVO getResCont(String res_code);

}
