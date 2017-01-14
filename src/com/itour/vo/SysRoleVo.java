package com.itour.vo;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.itour.base.page.BasePage;
@JsonInclude(Include.NON_NULL)
public class SysRoleVo extends BasePage implements Serializable{
	
		private String id;//   id主键	private String roleName;//   角色名称	private String createTime;//   创建时间	private Integer createBy;//   创建人	private String updateTime;//   修改时间	private Integer updateBy;//   修改人	private Integer state;//   状态0=可用 1=禁用	private String descr;//   角色描述
	private short level;//管理员级别,1=超级管理员，2.3.4=管理咒，站点管理员，测试管理员	public String getId() {	    return this.id;	}	public void setId(String id) {	    this.id=id;	}		public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getCreateTime() {	    return this.createTime;	}	public void setCreateTime(String createTime) {	    this.createTime=createTime;	}	public Integer getCreateBy() {	    return this.createBy;	}	public void setCreateBy(Integer createBy) {	    this.createBy=createBy;	}	public String getUpdateTime() {	    return this.updateTime;	}	public void setUpdateTime(String updateTime) {	    this.updateTime=updateTime;	}	public Integer getUpdateBy() {	    return this.updateBy;	}	public void setUpdateBy(Integer updateBy) {	    this.updateBy=updateBy;	}	public Integer getState() {	    return this.state;	}	public void setState(Integer state) {	    this.state=state;	}	public String getDescr() {	    return this.descr;	}	public void setDescr(String descr) {	    this.descr=descr;	}
	public short getLevel() {
		return level;
	}
	public void setLevel(short level) {
		this.level = level;
	}
	
}
