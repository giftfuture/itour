package com.itour.entity;

import com.itour.base.entity.BaseEntity;
import java.math.BigDecimal;
/**
 * 
 * <br>
 * <b>功能：</b>TravelItemEntity<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class TravelItem extends BaseEntity {
	
	
	public java.lang.String getItem() {
		return item;
	}
	public void setItem(java.lang.String item) {
		this.item = item;
	}
	public java.lang.String getItemCode() {
		return itemCode;
	}
	public void setItemCode(java.lang.String itemCode) {
		this.itemCode = itemCode;
	}
	public BigDecimal getElevation() {
		return elevation;
	}
	public void setElevation(BigDecimal elevation) {
		this.elevation = elevation;
	}
	public java.lang.String getContent() {
		return content;
	}
	public void setContent(java.lang.String content) {
		this.content = content;
	}
	public java.lang.String getPhotos() {
		return photos;
	}
	public void setPhotos(java.lang.String photos) {
		this.photos = photos;
	}
	public java.lang.String getRemark() {
		return remark;
	}
	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
	public java.lang.String getMileage() {
		return mileage;
	}
	public void setMileage(java.lang.String mileage) {
		this.mileage = mileage;
	}
	public java.lang.String getScope() {
		return scope;
	}
	public void setScope(java.lang.String scope) {
		this.scope = scope;
	}
	public java.lang.String getShortContent() {
		return shortContent;
	}
	public void setShortContent(java.lang.String shortContent) {
		this.shortContent = shortContent;
	}
	public java.lang.Integer getRank() {
		return rank;
	}
	public void setRank(java.lang.Integer rank) {
		this.rank = rank;
	}
	public java.lang.String getRecommandReason() {
		return recommandReason;
	}
	public void setRecommandReason(java.lang.String recommandReason) {
		this.recommandReason = recommandReason;
	}
	public BigDecimal getDiscount() {
		return discount;
	}
	public void setDiscount(BigDecimal discount) {
		this.discount = discount;
	}
	public java.lang.Integer getRcdDays() {
		return rcdDays;
	}
	public void setRcdDays(java.lang.Integer rcdDays) {
		this.rcdDays = rcdDays;
	}
	public java.lang.Integer getDifficultyRate() {
		return difficultyRate;
	}
	public void setDifficultyRate(java.lang.Integer difficultyRate) {
		this.difficultyRate = difficultyRate;
	}
	public java.lang.Integer getHappyValue() {
		return happyValue;
	}
	public void setHappyValue(java.lang.Integer happyValue) {
		this.happyValue = happyValue;
	}
	public java.lang.String getRecommandCrowd() {
		return recommandCrowd;
	}
	public void setRecommandCrowd(java.lang.String recommandCrowd) {
		this.recommandCrowd = recommandCrowd;
	}
}
