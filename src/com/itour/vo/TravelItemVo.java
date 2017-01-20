package com.itour.vo;

import java.io.File;
import java.io.Serializable;
import java.math.BigDecimal;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.itour.base.page.BasePage;
/**
 * 
 * <br>
 * <b>功能：</b>TravelItemEntity<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@JsonInclude(Include.NON_NULL)
public class TravelItemVo extends BasePage implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6120210586713700033L;
	private java.lang.String id;//   	private java.lang.String item;//   
	private String alias;//旅行项目别名	private java.lang.String itemCode;//   	private BigDecimal elevation;//海拔   	private java.lang.String content;//   	private java.lang.String photos;//   	private java.lang.String remark;//   	private java.lang.String mileage;//   	private java.lang.String scope;//   
	private String scopeAlias;	private java.lang.String shortContent;//   	private java.lang.Integer rank;//   	private java.lang.String recommandReason;//   	private BigDecimal discount;//  折扣 	private java.lang.Integer rcdDays;//   建议天数	private java.lang.Integer difficultyRate;//   (挑战度)1为最低,5为最高,依次递增	private java.lang.Integer happyValue;//   1为最低,5为最高,依次递增	private java.lang.String recommandCrowd;//   建议适合的人群及要求,注意事项
	private String travelStyle;
	private File[] fileselect;
	private String cover;//封面图片
	private String feature;//特色
	private String equip;//装备
	private String exclude;//不包括
	private String itinerary;//行程
	private String map;//地图
	private String season;//建议季节
	private String recommandEquip;
	private boolean hot;//1=热门景点，0=非热点
		public java.lang.String getId() {	    return this.id;	}	public void setId(java.lang.String id) {	    this.id=id;	}
	public String getItinerary() {
		return itinerary;
	}
	public void setItinerary(String itinerary) {
		this.itinerary = itinerary;
	}
	public java.lang.String getItem() {
		return item;
	}
	public String getRecommandEquip() {
		return recommandEquip;
	}
	public void setRecommandEquip(String recommandEquip) {
		this.recommandEquip = recommandEquip;
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
	public File[] getFileselect() {
		return fileselect;
	}
	public void setFileselect(File[] fileselect) {
		this.fileselect = fileselect;
	}
	public String getTravelStyle() {
		return travelStyle;
	}
	public void setTravelStyle(String travelStyle) {
		this.travelStyle = travelStyle;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public String getFeature() {
		return feature;
	}
	public void setFeature(String feature) {
		this.feature = feature;
	}
	public String getEquip() {
		return equip;
	}
	public void setEquip(String equip) {
		this.equip = equip;
	}
	public String getExclude() {
		return exclude;
	}
	public void setExclude(String exclude) {
		this.exclude = exclude;
	}
	public String getMap() {
		return map;
	}
	public void setMap(String map) {
		this.map = map;
	}
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public boolean isHot() {
		return hot;
	}
	public void setHot(boolean hot) {
		this.hot = hot;
	}
	public String getAlias() {
		return alias;
	}
	public void setAlias(String alias) {
		this.alias = alias;
	}	public String getScopeAlias() {
		return scopeAlias;
	}
	public void setScopeAlias(String scopeAlias) {
		this.scopeAlias = scopeAlias;
	}
}

