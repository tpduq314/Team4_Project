package com.naver.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naver.vo.ResVO;

@Repository
public class ResDAOImpl implements ResDAO {
	
	@Autowired
	private SqlSession sqlSession;//mybatis 쿼리문 수행 sqlSession



	@Override
	public void insertRes(ResVO res) {
		this.sqlSession.insert("res_in",res);
	}
	

}
