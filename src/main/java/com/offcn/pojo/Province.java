package com.offcn.pojo;

import java.util.List;

public class Province { 

	private int t_sid;
	private String t_sname;
	private String t_num;
	private int t_cid;
	private List<City> city;
	public int getT_sid() {
		return t_sid;
	}
	public void setT_sid(int t_sid) {
		this.t_sid = t_sid;
	}
	public String getT_sname() {
		return t_sname;
	}
	public void setT_sname(String t_sname) {
		this.t_sname = t_sname;
	}
	public String getT_num() {
		return t_num;
	}
	public void setT_num(String t_num) {
		this.t_num = t_num;
	}
	public int getT_cid() {
		return t_cid;
	}
	public void setT_cid(int t_cid) {
		this.t_cid = t_cid;
	}
	@Override
	public String toString() {
		return "Province [t_sid=" + t_sid + ", t_sname=" + t_sname + ", t_num=" + t_num + ", t_cid=" + t_cid + "]";
	}
	public List<City> getCity() {
		return city;
	}
	public void setCity(List<City> city) {
		this.city = city;
	}
	
	
}
