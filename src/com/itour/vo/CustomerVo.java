package com.itour.vo;


import java.io.Serializable;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import com.itour.base.page.BasePage;
/**
 * 
 * <br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class CustomerVo extends BasePage implements Serializable{
	
	
	private java.lang.String id;//   
	private java.lang.String customerId;//   
	private java.util.Date createTime;//   
	private java.lang.Integer status;//   
	private java.util.Date updateTime;//   
	private java.lang.String address;//   
	private java.lang.String email;//   
	private java.lang.Integer scope;//   1=中国大陆,2=香港,3=澳门,4=台湾,5=海外
	private java.lang.String city;//   
	private java.lang.String telephone;//   
	private java.lang.String mobile;//   
	private java.lang.String customerName;//   
	private java.lang.String nickName;//   
	private java.lang.String district;//   
	private java.lang.String introduction;// 
	private String birthday;
	public CustomerVo(){}
	public CustomerVo(String customerId,String customerName,String introduce){
		this.customerId = customerId ;
		this.customerName = customerName;
		this.introduction = introduce ;
	}
	public java.lang.String getId() {
	    return this.id;
	}
	public void setId(java.lang.String id) {
	    this.id=id;
	}
	public java.lang.String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(java.lang.String customerId) {
		this.customerId = customerId;
	}
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
	public java.lang.String getAddress() {
		return address;
	}
	public void setAddress(java.lang.String address) {
		this.address = address;
	}
	public java.lang.String getEmail() {
		return email;
	}
	public void setEmail(java.lang.String email) {
		this.email = email;
	}
	public java.lang.Integer getScope() {
		return scope;
	}
	public void setScope(java.lang.Integer scope) {
		this.scope = scope;
	}
	public java.lang.String getCity() {
		return city;
	}
	public void setCity(java.lang.String city) {
		this.city = city;
	}
	public java.lang.String getTelephone() {
		return telephone;
	}
	public void setTelephone(java.lang.String telephone) {
		this.telephone = telephone;
	}
	public java.lang.String getMobile() {
		return mobile;
	}
	public void setMobile(java.lang.String mobile) {
		this.mobile = mobile;
	}
	public java.lang.String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(java.lang.String customerName) {
		this.customerName = customerName;
	}
	public java.lang.String getNickName() {
		return nickName;
	}
	public void setNickName(java.lang.String nickName) {
		this.nickName = nickName;
	}
	public java.lang.String getDistrict() {
		return district;
	}
	public void setDistrict(java.lang.String district) {
		this.district = district;
	}
	public java.lang.String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(java.lang.String introduction) {
		this.introduction = introduction;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
}

