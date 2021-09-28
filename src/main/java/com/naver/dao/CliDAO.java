package com.naver.dao;

import com.naver.vo.CliVO;

public interface CliDAO {

	void insertCli(CliVO cli);

	CliVO getCliCont(String res_code);

}
