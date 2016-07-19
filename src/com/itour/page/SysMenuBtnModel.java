package com.itour.page;

import com.itour.base.page.BasePage;

public class SysMenuBtnModel extends BasePage {
	

		private Integer id;//   主键	private Integer menuid;//    菜单id关联 sys_menu.id	private String btnName;//   按钮名称	private String btnType;//   按钮类型，用于列表页显示的按钮	private String actionUrls;//   url注册，用"," 分隔 。用于权限控制UR
	private java.lang.Integer deleted;//   是否删除,0=未删除，1=已删除
	private java.util.Date createTime;//   创建时间
	private java.util.Date updateTime;//   修改时间
	private java.lang.String actions;//   注册Action 按钮|分隔
	private java.lang.String createBy;//   
	private java.lang.String updateBy;//	public Integer getId() {	    return this.id;	}	public void setId(Integer id) {	    this.id=id;	}	public Integer getMenuid() {	    return this.menuid;	}	public void setMenuid(Integer menuid) {	    this.menuid=menuid;	}	public String getBtnName() {	    return this.btnName;	}	public void setBtnName(String btnName) {	    this.btnName=btnName;	}	public String getBtnType() {	    return this.btnType;	}	public void setBtnType(String btnType) {	    this.btnType=btnType;	}	public String getActionUrls() {	    return this.actionUrls;	}	public void setActionUrls(String actionUrls) {	    this.actionUrls=actionUrls;	}
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
