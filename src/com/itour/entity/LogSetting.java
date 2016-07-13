package com.itour.entity;

import com.itour.base.entity.BaseEntity;
import java.math.BigDecimal;
/**
 * 
 * <br>
 * <b>功能：</b>LogSettingEntity<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class LogSetting extends BaseEntity {
	
		private java.lang.String logCode;//   	private java.lang.String tableName;//   	private java.lang.String function;//   	private java.lang.String urlTeimplate;//   	private java.lang.String creator;//   	private java.lang.String deletescriptTemplate;//   	private java.lang.String updatescriptTemplate;//   	private java.util.Date createTime;//   	public java.lang.String getlogCode() {	    return this.logCode;	}	public void setlogCode(java.lang.String logCode) {	    this.logCode=logCode;	}	public java.lang.String gettableName() {	    return this.tableName;	}	public void settableName(java.lang.String tableName) {	    this.tableName=tableName;	}	public java.lang.String getfunction() {	    return this.function;	}	public void setfunction(java.lang.String function) {	    this.function=function;	}	public java.lang.String geturlTeimplate() {	    return this.urlTeimplate;	}	public void seturlTeimplate(java.lang.String urlTeimplate) {	    this.urlTeimplate=urlTeimplate;	}	public java.lang.String getcreator() {	    return this.creator;	}	public void setcreator(java.lang.String creator) {	    this.creator=creator;	}	public java.lang.String getdeletescriptTemplate() {	    return this.deletescriptTemplate;	}	public void setdeletescriptTemplate(java.lang.String deletescriptTemplate) {	    this.deletescriptTemplate=deletescriptTemplate;	}	public java.lang.String getupdatescriptTemplate() {	    return this.updatescriptTemplate;	}	public void setupdatescriptTemplate(java.lang.String updatescriptTemplate) {	    this.updatescriptTemplate=updatescriptTemplate;	}	public java.util.Date getcreateTime() {	    return this.createTime;	}	public void setcreateTime(java.util.Date createTime) {	    this.createTime=createTime;	}
}

