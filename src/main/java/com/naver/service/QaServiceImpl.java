package com.naver.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naver.dao.QaDAO;
import com.naver.vo.QaVO;

@Service
public class QaServiceImpl implements QaService {
	
	@Autowired
	private QaDAO qaDao;
	
	@Override
	public void insertQa(QaVO q) {
		this.qaDao.insertQa(q);
	}

}
