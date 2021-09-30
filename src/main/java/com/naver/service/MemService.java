package com.naver.service;

import com.naver.vo.MemVO;

public interface MemService {

	MemVO idCheck(String id);

	void insertMember(MemVO mem);

	MemVO loginCheck(String login_id);

	void editMem(MemVO m);

	MemVO getMem(String id);

}
