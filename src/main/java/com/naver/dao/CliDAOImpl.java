package com.naver.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naver.vo.CliVO;

@Repository
public class CliDAOImpl implements CliDAO{

	@Autowired
	private SqlSession sqlSession;//mybatis 쿼리문 수행 sqlSession

	@Override
	public void insertCli(CliVO cli) {
		this.sqlSession.insert("cli_in",cli);
		
	}
	
}
