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
public class LogOperationVO extends BasePage implements Serializable {
	
	
	 * 
	 */
	private String id;
	private java.lang.String operCode;//   
	private String newContent;//新值
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public java.lang.String getOperCode() {
		return operCode;
	}
	public void setOperCode(java.lang.String operCode) {
		this.operCode = operCode;
	}
	public java.lang.String getLogCode() {
		return logCode;
	}
	public void setLogCode(java.lang.String logCode) {
		this.logCode = logCode;
	}
	public java.lang.String getOperationType() {
		return operationType;
	}
	public void setOperationType(java.lang.String operationType) {
		this.operationType = operationType;
	}
	public java.lang.String getPrimaryKeyvalue() {
		return primaryKeyvalue;
	}
	public void setPrimaryKeyvalue(java.lang.String primaryKeyvalue) {
		this.primaryKeyvalue = primaryKeyvalue;
	}
	public java.lang.String getContent() {
		return content;
	}
	public void setContent(java.lang.String content) {
		this.content = content;
	}
	public java.lang.String getUrl() {
		return url;
	}
	public void setUrl(java.lang.String url) {
		this.url = url;
	}
	public java.lang.String getCreater() {
		return creater;
	}
	public void setCreater(java.lang.String creater) {
		this.creater = creater;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
		return newContent;
	}
	public void setNewContent(String newContent) {
		this.newContent = newContent;
	}
}
