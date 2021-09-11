package com.naver.dao;

import java.util.List;

import com.naver.vo.PackVO;

public interface PackDAO {

	List<PackVO> getPackageList(PackVO p);

}
