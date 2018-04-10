package com.offcn.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.offcn.pojo.City;
import com.offcn.service.CityService;

public class TestDemo {

	@Autowired
	private CityService cityService;
	@RequestMapping("/faultType")
	@ResponseBody
	public Map<String,Object> faultType(int id,HttpServletRequest request)throws IOException
	{
	String ReturnMessage = "";
	List<City> citylist = cityService.getCityAll(id);
	if(citylist.size()>0){
	request.setAttribute("citylist", citylist);
	ReturnMessage = "OK";
	}else {
	ReturnMessage = "msg fail";
	}
	Map<String,Object> ReturnMAP = new HashMap<String,Object>();
	ReturnMAP.put("citylist", citylist);
	return ReturnMAP;
	}
}
