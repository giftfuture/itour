package com.itour.entity;

import com.itour.base.entity.BaseEntity;

public class AdLink extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7069705719789084689L;
	private String id;
	private String advertise;
	private String link;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAdvertise() {
		return advertise;
	}
	public void setAdvertise(String advertise) {
		this.advertise = advertise;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	
}
