package com.itour.entity;

import com.itour.base.entity.BaseEntity;
import java.math.BigDecimal;
/**
 * 
 * <br>
 * <b>功能：</b>LogSettingDetailEntity<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class LogSettingDetail extends BaseEntity {
	
	
	public java.lang.String getDetailCode() {
		return detailCode;
	}
	public void setDetailCode(java.lang.String detailCode) {
		this.detailCode = detailCode;
	}
	public java.lang.String getLogCode() {
		return logCode;
	}
	public void setLogCode(java.lang.String logCode) {
		this.logCode = logCode;
	}
	public java.lang.String getColumnName() {
		return columnName;
	}
	public void setColumnName(java.lang.String columnName) {
		this.columnName = columnName;
	}
	public java.lang.String getColumnText() {
		return columnText;
	}
	public void setColumnText(java.lang.String columnText) {
		this.columnText = columnText;
	}
	public java.lang.String getColumnDatatype() {
		return columnDatatype;
	}
	public void setColumnDatatype(java.lang.String columnDatatype) {
		this.columnDatatype = columnDatatype;
	}
	public java.util.Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(java.util.Date createTime) {
		this.createTime = createTime;
	}
	public java.lang.String getCreator() {
		return creator;
	}
	public void setCreator(java.lang.String creator) {
		this.creator = creator;
	}
}
