package com.offcn.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	
	@RequestMapping("test")
	public String list(String name,String pwd,HttpServletRequest req){
		
		HttpSession session = req.getSession();
		System.out.println("name="+name+"-------"+pwd);
		session.setAttribute("name", name);
		session.setAttribute("pwd", pwd);
		return "success";
	}
}
