package com.itour.vo;

import java.io.Serializable;
import java.sql.Timestamp;

import com.itour.base.entity.BaseEntity;
import com.itour.base.page.BasePage;


public class SysUserVo extends BasePage implements Serializable{
	
	
	 * 
	 */
	private static final long serialVersionUID = -7694404748102354148L;
	private String id;//   id主键
	
	private Integer superAdmin;//超级管理员
	
	private String validateCode;
	private Timestamp expireDate;
	private String roleStr;//用户权限, 按","区分
	
	public SysUserVo (){}
	public SysUserVo (String id,String email,String nickname){
		this.id = id;
		this.email = email;
		this.nickName = nickname;
	}
	
		return roleStr;
	}
	public void setRoleStr(String roleStr) {
		this.roleStr = roleStr;
	}
	public String getId() {
	public Integer getSuperAdmin() {
		return superAdmin;
	}
	public void setSuperAdmin(Integer superAdmin) {
		this.superAdmin = superAdmin;
	}
	public String getValidateCode() {
		return validateCode;
	}
	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}
	public Timestamp getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(Timestamp expireDate) {
		this.expireDate = expireDate;
	}
	
}