package com.naver.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naver.vo.LandVO;

@Repository
public class LandDAOImpl implements LandDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<LandVO> getLandList(LandVO l, String pack_code) {
		return this.sqlSession.selectList("land_li",l);
	}

}
