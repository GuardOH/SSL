package com.offcn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offcn.mapper.ProvinceMapper;
import com.offcn.pojo.Province;
import com.offcn.service.ProService;

@Service
public class ProServiceImpl implements ProService {

	@Autowired
	private ProvinceMapper provinceMapper;
	
	public List<Province> getList() {
		// TODO Auto-generated method stub
		return provinceMapper.getList();
	}

}
