package com.naver.service;

import java.util.List;

import com.naver.vo.PackVO;

public interface PackService {

	List<PackVO> getPackageList(PackVO p);
	int getListCount(PackVO p);
	PackVO getPackageCont(String pack_code);
}
