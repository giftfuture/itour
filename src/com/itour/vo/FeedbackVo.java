package com.itour.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.itour.base.page.BasePage;
/**
 * 
 * <br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class FeedbackVo extends BasePage implements Serializable {
	
		private java.lang.String id;//   	private String createTime;//   	private java.lang.Integer status;//   	private String updateTime;//   	private java.lang.String title;//   	private java.lang.String content;//   	private java.lang.String customerId;//   	private java.lang.String result;//   	private java.lang.String customerName;
	private String email;
	private String mobile;
		public java.lang.String getId() {
		return id;
	}
	public void setId(java.lang.String id) {
		this.id = id;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public java.lang.Integer getStatus() {
		return status;
	}
	public void setStatus(java.lang.Integer status) {
		this.status = status;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
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
	public void setContent(java.lang.String content) {
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
	public java.lang.String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(java.lang.String customerName) {
		this.customerName = customerName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
}

