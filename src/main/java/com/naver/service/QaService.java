package com.naver.service;

import java.util.List;

import com.naver.vo.QaVO;

public interface QaService {
	
	void insertQa(QaVO q);

	List<QaVO> getQaList(QaVO q);


}
