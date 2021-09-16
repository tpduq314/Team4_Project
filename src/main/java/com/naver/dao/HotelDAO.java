package com.naver.dao;

import java.util.List;

import com.naver.vo.HotelVO;

public interface HotelDAO {

	List<HotelVO> getHotelList(HotelVO h, String pack_code);
	
	
}
