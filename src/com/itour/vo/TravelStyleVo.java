package com.itour.vo;

import java.io.Serializable;
import java.math.BigDecimal;

import com.itour.base.page.BasePage;
/**
 * 
 * <br>
 * <b>功能：</b>TravelStyleEntity<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class TravelStyleVo extends BasePage implements Serializable{
	
	
	private java.lang.String remark;//  
	private boolean valid;
	public java.lang.String getType() {
		return type;
	}
	public void setType(java.lang.String type) {
		this.type = type;
	}
	public java.lang.String getRemark() {
		return remark;
	}
	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
	public String getAlias() {
		return alias;
	}
	public void setAlias(String alias) {
		this.alias = alias;
	}
	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
}
