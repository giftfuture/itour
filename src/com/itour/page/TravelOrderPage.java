package com.itour.page;

import com.itour.base.page.BasePage;
import java.math.BigDecimal;
import java.util.Date;
/**
 * 
 * <br>
 * <b>功能：</b>TravelOrderPage<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Thu Jul 14 12:16:53 2016 <br>
 */
public class TravelOrderPage extends BasePage {
	
	
	private java.lang.String id;//   
	private Date createTime;//   
	private Date updateTime;//   
	private java.lang.String orderName;//   
	private java.lang.String orderNo;//   
	private java.lang.Integer orderStatus;//   
	private java.lang.String receiver;//   
	private java.lang.String receiverMobile;//   
	private java.lang.String remark;//   
	private java.lang.String customerId;//   
	private Date expectedDepart;//   
	private Date expectedBack;//   
	private java.lang.Integer totalStaff;//   本次订单出行人数
	private java.lang.String isPayed;//   是否支付完成.
	private java.lang.String payType;//   1=线上支付,2=现金支付,3=邮政汇款,4=公司转帐
	private java.lang.String payPlatform;//   付款平台,如1=微信,2=支付宝,3=网银.
	private java.lang.String bank;//   如网银支付,即为付款方银行
	private java.lang.String payAccount;//   付款方银行帐户
	private Date payTime;//   付款时间
	private java.lang.String payTerminal;//   付款终端,如有,则为PC,IOS,Android
	private BigDecimal budget;//   
	public java.lang.String getId() {
	    return this.id;
	}
	public void setId(java.lang.String id) {
	    this.id=id;
	}
	public java.lang.String getOrderName() {
	    return this.orderName;
	}
	public void setOrderName(java.lang.String orderName) {
	    this.orderName=orderName;
	}
	public java.lang.String getOrderNo() {
	    return this.orderNo;
	}
	public void setOrderNo(java.lang.String orderNo) {
	    this.orderNo=orderNo;
	}
	public java.lang.Integer getOrderStatus() {
	    return this.orderStatus;
	}
	public void setOrderStatus(java.lang.Integer orderStatus) {
	    this.orderStatus=orderStatus;
	}
	public java.lang.String getReceiver() {
	    return this.receiver;
	}
	public void setReceiver(java.lang.String receiver) {
	    this.receiver=receiver;
	}
	public java.lang.String getReceiverMobile() {
	    return this.receiverMobile;
	}
	public void setReceiverMobile(java.lang.String receiverMobile) {
	    this.receiverMobile=receiverMobile;
	}
	public java.lang.String getRemark() {
	    return this.remark;
	}
	public void setRemark(java.lang.String remark) {
	    this.remark=remark;
	}
	public java.lang.String getCustomerId() {
	    return this.customerId;
	}
	public void setCustomerId(java.lang.String customerId) {
	    this.customerId=customerId;
	}
	public java.lang.Integer getTotalStaff() {
	    return this.totalStaff;
	}
	public void setTotalStaff(java.lang.Integer totalStaff) {
	    this.totalStaff=totalStaff;
	}
	public java.lang.String getIsPayed() {
	    return this.isPayed;
	}
	public void setIsPayed(java.lang.String isPayed) {
	    this.isPayed=isPayed;
	}
	public java.lang.String getPayType() {
	    return this.payType;
	}
	public void setPayType(java.lang.String payType) {
	    this.payType=payType;
	}
	public java.lang.String getPayPlatform() {
	    return this.payPlatform;
	}
	public void setPayPlatform(java.lang.String payPlatform) {
	    this.payPlatform=payPlatform;
	}
	public java.lang.String getBank() {
	    return this.bank;
	}
	public void setBank(java.lang.String bank) {
	    this.bank=bank;
	}
	public java.lang.String getPayAccount() {
	    return this.payAccount;
	}
	public void setPayAccount(java.lang.String payAccount) {
	    this.payAccount=payAccount;
	}
	public java.lang.String getPayTerminal() {
	    return this.payTerminal;
	}
	public void setPayTerminal(java.lang.String payTerminal) {
	    this.payTerminal=payTerminal;
	}
	public BigDecimal getBudget() {
	    return this.budget;
	}
	public void setBudget(BigDecimal budget) {
	    this.budget=budget;
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

	
}
