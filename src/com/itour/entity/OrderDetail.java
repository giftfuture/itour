package com.itour.entity;

import com.itour.base.entity.BaseEntity;
import java.math.BigDecimal;
/**
 * 
 * <br>
 * <b>功能：</b>OrderDetailEntity<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class OrderDetail extends BaseEntity {
	
		private java.lang.String id;//   	private java.lang.Integer status;//   	private java.util.Date createTime;//   	private java.util.Date updateTime;//   	private java.lang.String content;//   	private java.lang.String remark;//   	private java.lang.Float perPrice;//   	private java.lang.Float count;//   	private java.lang.String orderId;//   	public java.lang.String getId() {	    return this.id;	}	public void setId(java.lang.String id) {	    this.id=id;	}
	public java.lang.Integer getStatus() {
		return status;
	}
	public void setStatus(java.lang.Integer status) {
		this.status = status;
	}
	public java.util.Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(java.util.Date createTime) {
		this.createTime = createTime;
	}
	public java.util.Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(java.util.Date updateTime) {
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

