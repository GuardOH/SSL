package com.offcn.pojo;

public class City {

	private int c_id;
	private String c_cname;
	private String c_quhao;
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getC_cname() {
		return c_cname;
	}
	public void setC_cname(String c_cname) {
		this.c_cname = c_cname;
	}
	public String getC_quhao() {
		return c_quhao;
	}
	public void setC_quhao(String c_quhao) {
		this.c_quhao = c_quhao;
	}
	@Override
	public String toString() {
		return "City [c_id=" + c_id + ", c_cname=" + c_cname + ", c_quhao=" + c_quhao + "]";
	}
	
}
