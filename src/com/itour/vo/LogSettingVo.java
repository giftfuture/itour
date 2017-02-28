package com.itour.vo;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.itour.base.page.BasePage;
/**
 * 
 * <br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
//import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@JsonIgnoreProperties(ignoreUnknown = true)//忽略未知属性  
@JsonInclude(Include.NON_NULL)
public class LogSettingVo extends BasePage implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 3676699435719703726L;
	private java.lang.String logCode;//   	private java.lang.String tableName;//   	private java.lang.String function;//   	private java.lang.String urlTeimplate;//   	private java.lang.String creator;//   	private java.lang.String deletescriptTemplate;//   	private java.lang.String updatescriptTemplate;//   	private java.util.Date createTime;//   
	public java.lang.String getLogCode() {
		return logCode;
	}
	public void setLogCode(java.lang.String logCode) {
		this.logCode = logCode;
	}
	public java.lang.String getTableName() {
		return tableName;
	}
	public void setTableName(java.lang.String tableName) {
		this.tableName = tableName;
	}
	public java.lang.String getFunction() {
		return function;
	}
	public void setFunction(java.lang.String function) {
		this.function = function;
	}
	public java.lang.String getUrlTeimplate() {
		return urlTeimplate;
	}
	public void setUrlTeimplate(java.lang.String urlTeimplate) {
		this.urlTeimplate = urlTeimplate;
	}
	public java.lang.String getCreator() {
		return creator;
	}
	public void setCreator(java.lang.String creator) {
		this.creator = creator;
	}
	public java.lang.String getDeletescriptTemplate() {
		return deletescriptTemplate;
	}
	public void setDeletescriptTemplate(java.lang.String deletescriptTemplate) {
		this.deletescriptTemplate = deletescriptTemplate;
	}
	public java.lang.String getUpdatescriptTemplate() {
		return updatescriptTemplate;
	}
	public void setUpdatescriptTemplate(java.lang.String updatescriptTemplate) {
		this.updatescriptTemplate = updatescriptTemplate;
	}
	public java.util.Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(java.util.Date createTime) {
		this.createTime = createTime;
	}	
}

