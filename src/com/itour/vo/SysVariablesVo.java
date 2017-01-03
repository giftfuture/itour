package com.itour.vo;

import com.itour.base.entity.BaseEntity;
import com.itour.base.page.BasePage;

import java.io.Serializable;
import java.math.BigDecimal;
/**
 * 
 * <br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class SysVariablesVo extends BasePage implements Serializable{
	
	
	 * 
	 */
	private static final long serialVersionUID = -8356212737850829975L;
	private java.lang.String id;//   
	
	public java.lang.String getVarName() {
		return varName;
	}
	public void setVarName(java.lang.String varName) {
		this.varName = varName;
	}
	public java.lang.String getVarValue() {
		return varValue;
	}
	public void setVarValue(java.lang.String varValue) {
		this.varValue = varValue;
	}
	public java.lang.String getVarHostname() {
		return varHostname;
	}
	public void setVarHostname(java.lang.String varHostname) {
		this.varHostname = varHostname;
	}
	public java.lang.String getVarHostip() {
		return varHostip;
	}
	public void setVarHostip(java.lang.String varHostip) {
		this.varHostip = varHostip;
	}
	public java.lang.String getRemark() {
		return remark;
	}
	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
	public java.lang.String getVarProject() {
		return varProject;
	}
	public void setVarProject(java.lang.String varProject) {
		this.varProject = varProject;
	}
}
