package com.naver.service;

import java.util.List;

import com.naver.vo.HotelVO;

public interface HotelService {

	List<HotelVO> getHotelList(HotelVO h, String pack_code);

}
