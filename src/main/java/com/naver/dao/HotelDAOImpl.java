package com.naver.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naver.vo.HotelVO;

@Repository
public class HotelDAOImpl implements HotelDAO{

	@Autowired
	private SqlSession sqlSession;//mybatis 쿼리문 수행 sqlSession

	@Override
	public List<HotelVO> getHotelList(HotelVO h, String pack_code) {

		return this.sqlSession.selectList("hotel_li",h);
	}
	
	
}
