package com.naver.dao;

import com.naver.vo.MemVO;

public interface MemDAO {

	MemVO idCheck(String id);

	void insertMember(MemVO mem);

	MemVO loginCheck(String login_id);

}
