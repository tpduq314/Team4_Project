package com.naver.service;

import com.naver.vo.MemVO;

public interface MemService {

	MemVO idCheck(String id);

	MemVO loginCheck(String login_id);

}
