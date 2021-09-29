package com.naver.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naver.vo.QaVO;

@Repository
public class QaDAOImpl implements QaDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertQa(QaVO q) {
		this.sqlSession.insert("qa_in",q);
	}

}
