package com.naver.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naver.dao.HotelDAO;
import com.naver.vo.HotelVO;

@Service
public class HotelServiceImpl implements HotelService{

	@Autowired
	private HotelDAO hotelDAO;


	@Override
	public List<HotelVO> getHotelList(HotelVO h, String pack_code) {
		return this.hotelDAO.getHotelList(h,pack_code);
	}
}
