package com.itour.vo;

import java.io.Serializable;
import java.math.BigDecimal;

import com.itour.base.page.BasePage;
/**
 * 
 * <br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
import com.itour.base.util.DateUtil;
public class OrderDetailVo extends BasePage implements Serializable{
	
		private java.lang.String id;//   	private java.lang.Integer status;//   	private String createTime;//   	private String updateTime;//   	private java.lang.String content;//   	private java.lang.String remark;//   	private java.lang.Float perPrice;//   	private java.lang.Float count;//   	private java.lang.String orderId;//   	public java.lang.String getId() {	    return this.id;	}	public void setId(java.lang.String id) {	    this.id=id;	}
	public java.lang.Integer getStatus() {
		return status;
	}
	public void setStatus(java.lang.Integer status) {
		this.status = status;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	public java.lang.String getContent() {
		return content;
	}
	public void setContent(java.lang.String content) {
		this.content = content;
	}
	public java.lang.String getRemark() {
		return remark;
	}
	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
	public java.lang.Float getPerPrice() {
		return perPrice;
	}
	public void setPerPrice(java.lang.Float perPrice) {
		this.perPrice = perPrice;
	}
	public java.lang.Float getCount() {
		return count;
	}
	public void setCount(java.lang.Float count) {
		this.count = count;
	}
	public java.lang.String getOrderId() {
		return orderId;
	}
	public void setOrderId(java.lang.String orderId) {
		this.orderId = orderId;
	}	
}

