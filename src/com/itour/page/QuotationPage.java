package com.itour.page;

import com.itour.base.page.BasePage;
import java.math.BigDecimal;

/**
 * 
 * <br>
 * <b>功能：</b>QuotationPage<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Thu Jul 14 12:16:53 2016 <br>
 */
public class QuotationPage extends BasePage {
	
	
	private java.lang.String id;//   
	private java.lang.String name;//   
	private java.lang.String orderId;//   
	private java.lang.String quotation;//   
	private java.util.Date createTime;//   
	private java.util.Date updateTime;//   
	private java.lang.String remark;//   
	private java.lang.String type;//   1= 总价加利润,2= 明细报价
	private BigDecimal totalPrice;//   
	private java.lang.String formula;//   
	public java.lang.String getId() {
	    return this.id;
	}
	public void setId(java.lang.String id) {
	    this.id=id;
	}
	public java.lang.String getName() {
	    return this.name;
	}
	public void setName(java.lang.String name) {
	    this.name=name;
	}
	public java.lang.String getOrderId() {
	    return this.orderId;
	}
	public void setOrderId(java.lang.String orderId) {
	    this.orderId=orderId;
	}
	public java.lang.String getQuotation() {
	    return this.quotation;
	}
	public void setQuotation(java.lang.String quotation) {
	    this.quotation=quotation;
	}
	public java.util.Date getCreateTime() {
	    return this.createTime;
	}
	public void setCreateTime(java.util.Date createTime) {
	    this.createTime=createTime;
	}
	public java.util.Date getUpdateTime() {
	    return this.updateTime;
	}
	public void setUpdateTime(java.util.Date updateTime) {
	    this.updateTime=updateTime;
	}
	public java.lang.String getRemark() {
	    return this.remark;
	}
	public void setRemark(java.lang.String remark) {
	    this.remark=remark;
	}
	public java.lang.String getType() {
	    return this.type;
	}
	public void setType(java.lang.String type) {
	    this.type=type;
	}
	public BigDecimal getTotalPrice() {
	    return this.totalPrice;
	}
	public void setTotalPrice(BigDecimal totalPrice) {
	    this.totalPrice=totalPrice;
	}
	public java.lang.String getFormula() {
	    return this.formula;
	}
	public void setFormula(java.lang.String formula) {
	    this.formula=formula;
	}
	
}
