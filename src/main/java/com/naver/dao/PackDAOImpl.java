package com.naver.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PackDAOImpl implements PackDAO {
	
	@Autowired
	private SqlSession sqlSession;//mybatis 쿼리문 수행 sqlSession
}
