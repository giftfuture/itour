package com.itour.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.itour.base.entity.BaseEntity;
import com.itour.base.page.BasePage;
import com.itour.entity.OrderDetail;
/**
 * 
 * <br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class TravelOrderVo extends BasePage implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 8753408936131541053L;
	private java.lang.String id;//   
	private BigDecimal budget;  //旅行预算
	
	
	private List<OrderDetail> orderItems;
	
		return budget;
	}
	public void setBudget(BigDecimal budget) {
		this.budget = budget;
	}
	public java.lang.String getOrderName() {
		return orderName;
	}
	public void setOrderName(java.lang.String orderName) {
		this.orderName = orderName;
	}
	public java.lang.String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(java.lang.String orderNo) {
		this.orderNo = orderNo;
	}
	public java.lang.Integer getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(java.lang.Integer orderStatus) {
		this.orderStatus = orderStatus;
	}
	public java.lang.String getReceiver() {
		return receiver;
	}
	public void setReceiver(java.lang.String receiver) {
		this.receiver = receiver;
	}
	public java.lang.String getReceiverMobile() {
		return receiverMobile;
	}
	public void setReceiverMobile(java.lang.String receiverMobile) {
		this.receiverMobile = receiverMobile;
	}
	public java.lang.String getRemark() {
		return remark;
	}
	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
	public java.lang.String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(java.lang.String customerId) {
		this.customerId = customerId;
	}
	public java.lang.Integer getTotalStaff() {
		return totalStaff;
	}
	public void setTotalStaff(java.lang.Integer totalStaff) {
		this.totalStaff = totalStaff;
	}
	public java.lang.String getIsPayed() {
		return isPayed;
	}
	public void setIsPayed(java.lang.String isPayed) {
		this.isPayed = isPayed;
	}
	public java.lang.String getPayType() {
		return payType;
	}
	public void setPayType(java.lang.String payType) {
		this.payType = payType;
	}
	public java.lang.String getPayPlatform() {
		return payPlatform;
	}
	public void setPayPlatform(java.lang.String payPlatform) {
		this.payPlatform = payPlatform;
	}
	public java.lang.String getBank() {
		return bank;
	}
	public void setBank(java.lang.String bank) {
		this.bank = bank;
	}
	public java.lang.String getPayAccount() {
		return payAccount;
	}
	public void setPayAccount(java.lang.String payAccount) {
		this.payAccount = payAccount;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public Date getExpectedDepart() {
		return expectedDepart;
	}
	public void setExpectedDepart(Date expectedDepart) {
		this.expectedDepart = expectedDepart;
	}
	public Date getExpectedBack() {
		return expectedBack;
	}
	public void setExpectedBack(Date expectedBack) {
		this.expectedBack = expectedBack;
	}
	public Date getPayTime() {
		return payTime;
	}
	public void setPayTime(Date payTime) {
		this.payTime = payTime;
	}
	public java.lang.String getPayTerminal() {
		return payTerminal;
	}
	public void setPayTerminal(java.lang.String payTerminal) {
		this.payTerminal = payTerminal;
	}
	public List<OrderDetail> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(List<OrderDetail> orderItems) {
		this.orderItems = orderItems;
	}
	
}
