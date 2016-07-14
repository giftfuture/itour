package com.itour.entity;

import com.itour.base.entity.BaseEntity;
import java.math.BigDecimal;
/**
 * 
 * <br>
 * <b>功能：</b>LogOperationEntity<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class LogOperation extends BaseEntity {
	
		/**
	 * 
	 */
	private static final long serialVersionUID = 8826233846469737958L;
	private java.lang.String operCode;//   	private java.lang.String logCode;//   	private java.lang.String operationType;//   	private java.lang.String primaryKeyvalue;//   	private java.lang.String content;//   	private java.lang.String url;//   	private java.lang.String creator;//   	private java.util.Date createTime;//   
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
	public java.lang.String getCreator() {
		return creator;
	}
	public void setCreator(java.lang.String creator) {
		this.creator = creator;
	}
	public java.util.Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(java.util.Date createTime) {
		this.createTime = createTime;
	}	
}

