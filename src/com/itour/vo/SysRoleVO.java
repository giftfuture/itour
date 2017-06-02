package com.itour.vo;

import java.io.Serializable;


import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.itour.base.page.BasePage;
//import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@JsonIgnoreProperties(ignoreUnknown = true)//忽略未知属性  
@JsonInclude(Include.NON_NULL)
public class SysRoleVO extends BasePage implements Serializable{
	
	private short level;//管理员级别,1=超级管理员，2.3.4=管理咒，站点管理员，测试管理员
	private int number;//角色编号
	private int deleted;
	
	
	public int getDeleted() {
		return deleted;
	}
	public void setDeleted(int deleted) {
		this.deleted = deleted;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getCreateTime() {
	public short getLevel() {
		return level;
	}
	public void setLevel(short level) {
		this.level = level;
	}
	
}