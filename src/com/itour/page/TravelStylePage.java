package com.itour.page;

import com.itour.base.page.BasePage;
import java.math.BigDecimal;

/**
 * 
 * <br>
 * <b>功能：</b>TravelStylePage<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Thu Jul 14 12:16:53 2016 <br>
 */
public class TravelStylePage extends BasePage {
	
	
	private java.lang.String id;//   
	private java.lang.String type;//   
	private java.lang.String remark;//   
	private String alias;
	private boolean valid;
	public java.lang.String getId() {
	    return this.id;
	}
	public void setId(java.lang.String id) {
	    this.id=id;
	}
	public java.lang.String getType() {
	    return this.type;
	}
	public void setType(java.lang.String type) {
	    this.type=type;
	}
	public java.lang.String getRemark() {
	    return this.remark;
	}
	public void setRemark(java.lang.String remark) {
	    this.remark=remark;
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
