package com.itour.entity;

import java.io.Serializable;
import java.util.Date;

import com.itour.base.entity.BaseEntity;
/**
 * 
 * <br>
 * <b>功能：</b>CustomersEntity<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class Customers  extends BaseEntity{
	
		/**
	 * 
	 */
	private static final long serialVersionUID = -2187529161381842502L;
	private Integer customerId;//   	private Date createTime;//   	private Integer status;//   	private Date updateTime;//   	private String address;//   	private String email;//   	private Integer scope;//   1=中国大陆,2=香港,3=澳门,4=台湾,5=海外	private String city;//   	private String telephone;//   	private String mobile;//   	private String customerName;//   	private String nickName;//   	private String district;//   	private String introduction;//   
	
	public Customers(Integer customerId,String customerName,String introduction){
		this.customerId = customerId;
		this.customerName =customerName ;
		this.introduction = introduction;
	}
	public Customers(){}	public Integer getcustomerId() {	    return this.customerId;	}	public void setcustomerId(Integer customerId) {	    this.customerId=customerId;	}	public java.util.Date getcreateTime() {	    return this.createTime;	}	public void setcreateTime(java.util.Date createTime) {	    this.createTime=createTime;	}	public Integer getstatus() {	    return this.status;	}	public void setstatus(Integer status) {	    this.status=status;	}	public java.util.Date getupdateTime() {	    return this.updateTime;	}	public void setupdateTime(java.util.Date updateTime) {	    this.updateTime=updateTime;	}	public String getaddress() {	    return this.address;	}	public void setaddress(String address) {	    this.address=address;	}	public String getemail() {	    return this.email;	}	public void setemail(String email) {	    this.email=email;	}	public Integer getscope() {	    return this.scope;	}	public void setscope(Integer scope) {	    this.scope=scope;	}	public String getcity() {	    return this.city;	}	public void setcity(String city) {	    this.city=city;	}	public String gettelephone() {	    return this.telephone;	}	public void settelephone(String telephone) {	    this.telephone=telephone;	}	public String getmobile() {	    return this.mobile;	}	public void setmobile(String mobile) {	    this.mobile=mobile;	}	public String getcustomerName() {	    return this.customerName;	}	public void setcustomerName(String customerName) {	    this.customerName=customerName;	}	public String getnickName() {	    return this.nickName;	}	public void setnickName(String nickName) {	    this.nickName=nickName;	}	public String getdistrict() {	    return this.district;	}	public void setdistrict(String district) {	    this.district=district;	}	public String getintroduction() {	    return this.introduction;	}	public void setintroduction(String introduction) {	    this.introduction=introduction;	}
	
	@Override
	public String toString(){
		return "Customers[customerId="+customerId+",createTime="+createTime+",status="+status+",updateTime="+updateTime+
				",address="+address+",email="+email+",scope="+scope+",city="+city+",telephone="+telephone+",mobile="+mobile+
				",customerName="+customerName+",nickName="+nickName+",district="+district+",introduction="+introduction+"]";
	}
}

