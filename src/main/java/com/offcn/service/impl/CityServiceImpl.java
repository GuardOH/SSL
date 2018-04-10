package com.offcn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offcn.mapper.CityMapper;
import com.offcn.pojo.City;
import com.offcn.service.CityService;

@Service
public class CityServiceImpl implements CityService {

	@Autowired
	private CityMapper cityMapper;
	
	public List<City> getCityAll(int id) {
		// TODO Auto-generated method stub
		return cityMapper.getCityAll(id);
	}

}
