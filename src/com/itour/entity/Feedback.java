package com.itour.entity;

import com.itour.base.entity.BaseEntity;
import java.math.BigDecimal;
/**
 * 
 * <br>
 * <b>功能：</b>FeedbackEntity<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class Feedback extends BaseEntity {
	
		private java.lang.String id;//   	private java.util.Date createTime;//   	private java.lang.Integer status;//   	private java.util.Date updateTime;//   	private java.lang.String title;//   	private java.lang.Object content;//   	private java.lang.String customerId;//   	private java.lang.String result;//   		public java.lang.String getId() {
		return id;
	}
	public void setId(java.lang.String id) {
		this.id = id;
	}
	public java.util.Date getcreateTime() {	    return this.createTime;	}	public void setcreateTime(java.util.Date createTime) {	    this.createTime=createTime;	}	public java.lang.Integer getstatus() {	    return this.status;	}	public void setstatus(java.lang.Integer status) {	    this.status=status;	}	public java.util.Date getupdateTime() {	    return this.updateTime;	}	public void setupdateTime(java.util.Date updateTime) {	    this.updateTime=updateTime;	}	public java.lang.String gettitle() {	    return this.title;	}	public void settitle(java.lang.String title) {	    this.title=title;	}	public java.lang.Object getcontent() {	    return this.content;	}	public void setcontent(java.lang.Object content) {	    this.content=content;	}	public java.lang.String getcustomerId() {	    return this.customerId;	}	public void setcustomerId(java.lang.String customerId) {	    this.customerId=customerId;	}	public java.lang.String getresult() {	    return this.result;	}	public void setresult(java.lang.String result) {	    this.result=result;	}
	public java.util.Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(java.util.Date createTime) {
		this.createTime = createTime;
	}
	public java.lang.Integer getStatus() {
		return status;
	}
	public void setStatus(java.lang.Integer status) {
		this.status = status;
	}
	public java.util.Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(java.util.Date updateTime) {
		this.updateTime = updateTime;
	}
	public java.lang.String getTitle() {
		return title;
	}
	public void setTitle(java.lang.String title) {
		this.title = title;
	}
	public java.lang.Object getContent() {
		return content;
	}
	public void setContent(java.lang.Object content) {
		this.content = content;
	}
	public java.lang.String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(java.lang.String customerId) {
		this.customerId = customerId;
	}
	public java.lang.String getResult() {
		return result;
	}
	public void setResult(java.lang.String result) {
		this.result = result;
	}
}

