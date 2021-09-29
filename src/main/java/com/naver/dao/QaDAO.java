package com.naver.dao;

import java.util.List;

import com.naver.vo.QaVO;

public interface QaDAO {
	
	void insertQa(QaVO q);

	List<QaVO> getQaList(QaVO q);

}
