package com.naver.dao;

import java.util.List;

import com.naver.vo.LandVO;

public interface LandDAO {

	List<LandVO> getLandList(LandVO l, String pack_code);

}
