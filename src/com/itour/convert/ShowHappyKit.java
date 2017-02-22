package com.itour.convert;

import java.util.HashMap;
import java.util.Map;

import com.itour.entity.ShowHappy;
import com.itour.vo.ShowHappyVo;

public class ShowHappyKit {
	/**
	 * 
	 * @param vo
	 * @return
	 */
	public static Map<String, Object> toRecord(ShowHappyVo vo){
		Map<String, Object> record = new HashMap<String, Object>();
		record.put("id", vo.getId());
		record.put("customer", vo.getCustomer());
		record.put("createTime", vo.getCreateTime());
		record.put("status", vo.getStatus());
		record.put("updateTime", vo.getUpdateTime());
		record.put("area", vo.getArea());
		record.put("content", vo.getContent());
		record.put("result", vo.getResult());
		record.put("signature", vo.getSignature());
		record.put("title", vo.getTitle());
		record.put("route", vo.getRoute());
		record.put("tourTime",vo.getTourTime());
		record.put("cover", vo.getCover());
		record.put("isValid", vo.isValid());
		return record;
	}
	/**
	 * 
	 * @param vo
	 * @return
	 */
	public static ShowHappy toEntity(ShowHappyVo vo){
		ShowHappy sh = new ShowHappy();
		sh.setId(vo.getId());
		sh.setCustomer(vo.getCustomer());
		sh.setStatus(vo.getStatus());
		sh.setArea(vo.getArea());
		sh.setContent(vo.getContent());
		sh.setResult(vo.getResult());
		sh.setRoute(vo.getRoute());
		sh.setCreateTime(vo.getCreateTime());
		sh.setUpdateTime(vo.getUpdateTime());
		sh.setSignature(vo.getSignature());
		sh.setTitle(vo.getTitle());
		sh.setTourTime(vo.getTourTime());
		sh.setCover(vo.getCover());
		sh.setValid(vo.isValid());
		return sh;
	}
	/**
	 * 
	 * @param vo
	 * @return
	 */
	public static ShowHappyVo toVo(ShowHappy sh){
		ShowHappyVo vo = new ShowHappyVo();
		vo.setId(sh.getId());
		vo.setArea(sh.getArea());
		vo.setContent(sh.getContent());
		vo.setCreateTime(sh.getCreateTime());
		vo.setCustomer(sh.getCustomer());
		vo.setResult(sh.getResult());
		vo.setRoute(sh.getRoute());
		vo.setSignature(sh.getSignature());
		vo.setStatus(sh.getStatus());
		vo.setTitle(sh.getTitle());
		vo.setTourTime(sh.getTourTime());
		vo.setUpdateTime(sh.getUpdateTime());
		vo.setCover(sh.getCover());
		vo.setValid(sh.isValid());
		return vo;
	}
	/**
	 * 
	 * @param sh
	 * @return
	 */
	public static Map<String, Object> toRecord(ShowHappy sh){
		Map<String, Object> record = new HashMap<String, Object>();
		record.put("id", sh.getId());
		record.put("customer", sh.getCustomer());
		record.put("createTime", sh.getCreateTime());
		record.put("status", sh.getStatus());
		record.put("updateTime", sh.getUpdateTime());
		record.put("area", sh.getArea());
		record.put("content", sh.getContent());
		record.put("result", sh.getResult());
		record.put("signature", sh.getSignature());
		record.put("title", sh.getTitle());
		record.put("route", sh.getRoute());
		record.put("tourTime",sh.getTourTime());
		record.put("cover", sh.getCover());
		record.put("isValid", sh.isValid());
		return record;
	}
}
