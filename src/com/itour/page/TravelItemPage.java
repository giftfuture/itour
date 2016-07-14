package com.itour.page;

import com.itour.base.page.BasePage;
import java.math.BigDecimal;

/**
 * 
 * <br>
 * <b>功能：</b>TravelItemPage<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Thu Jul 14 12:16:53 2016 <br>
 */
public class TravelItemPage extends BasePage {
	
	
	private java.lang.String id;//   
	private java.lang.String item;//   
	private java.lang.String itemCode;//   
	private BigDecimal elevation;//   
	private java.lang.String content;//   
	private java.lang.String photos;//   
	private java.lang.String remark;//   
	private java.lang.String mileage;//   
	private java.lang.String scope;//   
	private java.lang.String shortContent;//   
	private java.lang.Integer rank;//   
	private java.lang.String recommandReason;//   
	private BigDecimal discount;//   
	private java.lang.Integer rcdDays;//   建议天数
	private java.lang.Integer difficultyRate;//   (挑战度)1为最低,5为最高,依次递增
	private java.lang.Integer happyValue;//   1为最低,5为最高,依次递增
	private java.lang.String recommandCrowd;//   建议适合的人群及要求,注意事项
	public java.lang.String getId() {
	    return this.id;
	}
	public void setId(java.lang.String id) {
	    this.id=id;
	}
	public java.lang.String getItem() {
	    return this.item;
	}
	public void setItem(java.lang.String item) {
	    this.item=item;
	}
	public java.lang.String getItemCode() {
	    return this.itemCode;
	}
	public void setItemCode(java.lang.String itemCode) {
	    this.itemCode=itemCode;
	}
	public BigDecimal getElevation() {
	    return this.elevation;
	}
	public void setElevation(BigDecimal elevation) {
	    this.elevation=elevation;
	}
	public java.lang.String getContent() {
	    return this.content;
	}
	public void setContent(java.lang.String content) {
	    this.content=content;
	}
	public java.lang.String getPhotos() {
	    return this.photos;
	}
	public void setPhotos(java.lang.String photos) {
	    this.photos=photos;
	}
	public java.lang.String getRemark() {
	    return this.remark;
	}
	public void setRemark(java.lang.String remark) {
	    this.remark=remark;
	}
	public java.lang.String getMileage() {
	    return this.mileage;
	}
	public void setMileage(java.lang.String mileage) {
	    this.mileage=mileage;
	}
	public java.lang.String getScope() {
	    return this.scope;
	}
	public void setScope(java.lang.String scope) {
	    this.scope=scope;
	}
	public java.lang.String getShortContent() {
	    return this.shortContent;
	}
	public void setShortContent(java.lang.String shortContent) {
	    this.shortContent=shortContent;
	}
	public java.lang.Integer getRank() {
	    return this.rank;
	}
	public void setRank(java.lang.Integer rank) {
	    this.rank=rank;
	}
	public java.lang.String getRecommandReason() {
	    return this.recommandReason;
	}
	public void setRecommandReason(java.lang.String recommandReason) {
	    this.recommandReason=recommandReason;
	}
	public BigDecimal getDiscount() {
	    return this.discount;
	}
	public void setDiscount(BigDecimal discount) {
	    this.discount=discount;
	}
	public java.lang.Integer getRcdDays() {
	    return this.rcdDays;
	}
	public void setRcdDays(java.lang.Integer rcdDays) {
	    this.rcdDays=rcdDays;
	}
	public java.lang.Integer getDifficultyRate() {
	    return this.difficultyRate;
	}
	public void setDifficultyRate(java.lang.Integer difficultyRate) {
	    this.difficultyRate=difficultyRate;
	}
	public java.lang.Integer getHappyValue() {
	    return this.happyValue;
	}
	public void setHappyValue(java.lang.Integer happyValue) {
	    this.happyValue=happyValue;
	}
	public java.lang.String getRecommandCrowd() {
	    return this.recommandCrowd;
	}
	public void setRecommandCrowd(java.lang.String recommandCrowd) {
	    this.recommandCrowd=recommandCrowd;
	}
	
}
