package com.itour.vo;

import java.io.Serializable;

import com.itour.base.page.BasePage;



public class SysMenuBtnVo extends BasePage implements Serializable{
	
	
	
	private String deleteFlag; //删除标记，与数据库字段无关 1=删除,其他不删除
	private java.lang.Integer deleted;//   是否删除,0=未删除，1=已删除
	private java.util.Date createTime;//   创建时间
	private java.util.Date updateTime;//   修改时间
	private java.lang.String actions;//   注册Action 按钮|分隔
	private java.lang.String createBy;//   
	private java.lang.String updateBy;//   
		return deleteFlag;
	}
	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	public String getId() {
	public java.lang.Integer getDeleted() {
		return deleted;
	}
	public void setDeleted(java.lang.Integer deleted) {
		this.deleted = deleted;
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
	public java.lang.String getActions() {
		return actions;
	}
	public void setActions(java.lang.String actions) {
		this.actions = actions;
	}
	public java.lang.String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(java.lang.String createBy) {
		this.createBy = createBy;
	}
	public java.lang.String getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(java.lang.String updateBy) {
		this.updateBy = updateBy;
	}
	
}