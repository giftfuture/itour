package com.itour.entity;

import com.itour.base.entity.BaseEntity;
import java.math.BigDecimal;
/**
 * 
 * <br>
 * <b>功能：</b>QuotationEntity<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class Quotation extends BaseEntity {
	
		private java.lang.String id;//   	private java.lang.String name;//   	private java.lang.String orderId;//   	private java.lang.String quotation;//   	private java.util.Date createTime;//   	private java.util.Date updateTime;//   	private java.lang.String remark;//   	private java.lang.String type;//   1= 总价加利润,2= 明细报价	private BigDecimal totalPrice;//   	private java.lang.String formula;//   	public java.lang.String getId() {	    return this.id;	}	public void setId(java.lang.String id) {	    this.id=id;	}	public java.lang.String getname() {	    return this.name;	}	public void setname(java.lang.String name) {	    this.name=name;	}	public java.lang.String getorderId() {	    return this.orderId;	}	public void setorderId(java.lang.String orderId) {	    this.orderId=orderId;	}	public java.lang.String getquotation() {	    return this.quotation;	}	public void setquotation(java.lang.String quotation) {	    this.quotation=quotation;	}	public java.util.Date getcreateTime() {	    return this.createTime;	}	public void setcreateTime(java.util.Date createTime) {	    this.createTime=createTime;	}	public java.util.Date getupdateTime() {	    return this.updateTime;	}	public void setupdateTime(java.util.Date updateTime) {	    this.updateTime=updateTime;	}	public java.lang.String getremark() {	    return this.remark;	}	public void setremark(java.lang.String remark) {	    this.remark=remark;	}	public java.lang.String gettype() {	    return this.type;	}	public void settype(java.lang.String type) {	    this.type=type;	}	public BigDecimal gettotalPrice() {	    return this.totalPrice;	}	public void settotalPrice(BigDecimal totalPrice) {	    this.totalPrice=totalPrice;	}	public java.lang.String getformula() {	    return this.formula;	}	public void setformula(java.lang.String formula) {	    this.formula=formula;	}
}

