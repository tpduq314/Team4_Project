package com.naver.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naver.vo.MemVO;

@Repository
public class MemDAOImpl implements MemDAO {

	@Autowired
	private SqlSession sqlSession;//mybatis 쿼리문 수행 sqlSession
	
	@Override
	public MemVO idCheck(String id) {
		return this.sqlSession.selectOne("mem_check",id);
	}

	@Override
	public void insertMember(MemVO mem) {
		this.sqlSession.insert("mem_in",mem);
		
	}

	@Override
	public MemVO loginCheck(String login_id) {
		return this.sqlSession.selectOne("login_ck",login_id);
	}

	@Override
	public void editMem(MemVO m) {
		this.sqlSession.update("mem_edit_ok",m);
	}

	@Override
	public MemVO getMem(String id) {
		return this.sqlSession.selectOne("get_mem",id);
	}

}
