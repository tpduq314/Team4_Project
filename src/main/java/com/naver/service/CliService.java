package com.naver.service;

import com.naver.vo.CliVO;

public interface CliService {

	void insertCli(CliVO cli);

	CliVO getCliCont(String res_code);

}
