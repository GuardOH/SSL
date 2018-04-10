package com.offcn.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.offcn.pojo.City;
import com.offcn.pojo.Province;
import com.offcn.service.CityService;
import com.offcn.service.ProService;


@Controller
public class ProController {

	@Autowired
	private ProService proService;
	@Autowired
	private CityService cityService;
	
	@RequestMapping("clist")
	public String getAll(ModelMap model) {
		List<Province> list = proService.getList();
		//将值写回jsp中
		model.put("list", list);
		return "pro";
	}
	
	@RequestMapping(value="getCity" ,method={RequestMethod.POST})
	@ResponseBody
	public List<City> getCity(int id){
		List<City> citylist = cityService.getCityAll(id);
		return citylist;
	}
}
