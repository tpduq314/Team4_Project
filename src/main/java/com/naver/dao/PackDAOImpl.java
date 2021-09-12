package com.naver.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naver.vo.PackVO;

@Repository
public class PackDAOImpl implements PackDAO {
	
	@Autowired
	private SqlSession sqlSession;//mybatis 쿼리문 수행 sqlSession

	@Override
	public List<PackVO> getPackageList(PackVO p) {
		return this.sqlSession.selectList("package_li",p);
	}

	@Override
	public int getTotalCount(PackVO p) {
		return this.sqlSession.selectOne("package_li_count",p);
	}
}
