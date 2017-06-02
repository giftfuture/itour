package com.itour.vo;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.itour.base.page.BasePage;
//import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@JsonIgnoreProperties(ignoreUnknown = true)//忽略未知属性  
@JsonInclude(Include.NON_NULL)
public class SysUserVO extends BasePage implements Serializable{
	
	
	 * 
	 */
	private static final long serialVersionUID = -7694404748102354148L;
	private String id;//   id主键
	
	private Integer superAdmin;//超级管理员
	
	private String validateCode;
	private String expireDate;
	private String roleStr;//用户权限, 按","区分
	
	public SysUserVO (){}
	public SysUserVO (String id,String email,String nickname){
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
	public String getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(String expireDate) {
		this.expireDate = expireDate;
	}
	
}