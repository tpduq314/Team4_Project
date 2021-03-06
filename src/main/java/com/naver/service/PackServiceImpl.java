package com.naver.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naver.dao.PackDAO;
import com.naver.vo.PackVO;

@Service
public class PackServiceImpl implements PackService {
	
	@Autowired
	private PackDAO packDAO;

	@Override
	public List<PackVO> getPackageList(PackVO p) {
		return this.packDAO.getPackageList(p);
	}

	@Override
	public int getListCount(PackVO p) {
		return this.packDAO.getTotalCount(p);
	}

	@Override
	public PackVO getPackageCont(String pack_code) {
		return this.packDAO.getPackageCont(pack_code);
	}
}
