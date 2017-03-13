package com.itour.convert;

import java.util.List;

import com.google.common.collect.Lists;
import com.itour.base.util.DateUtil;
import com.itour.entity.RouteTemplate;
import com.itour.vo.RouteTemplateVo;
/**
 * 
 * <br>
 * <b>功能：</b>RouteTemplateEntity<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class RouteTemplateKit{
	public static RouteTemplateVo toRecord(RouteTemplate rt){
		RouteTemplateVo vo = new RouteTemplateVo();
		vo.setCreateBy(rt.getCreateBy());
		vo.setCreateTime(DateUtil.getDateYmdHs(rt.getCreateTime()));
		vo.setCustomerId(rt.getCustomerId());
		vo.setD1(rt.getD1());
		vo.setId(rt.getId());
		vo.setUpdateBy(rt.getUpdateBy());
		vo.setUpdateTime(DateUtil.getDateYmdHs(rt.getUpdateTime()));
		vo.setRemark(rt.getRemark());
		vo.setSpecial(rt.getSpecial());
		vo.setRelated(rt.getRelated());
		vo.setTravelStyle(rt.getTravelStyle());
		vo.setRouteMap(rt.getRouteMap());
		vo.setTravelItems(rt.getTravelItems());
		vo.setCover(rt.getCover());
		vo.setTitle(rt.getTitle());
		vo.setAlias(rt.getAlias());
		vo.setShortContent(rt.getShortContent());
		vo.setRouteCode(rt.getRouteCode());
		vo.setArrive(rt.getArrive());
		vo.setDeparture(rt.getDeparture());
		vo.setTransportation(rt.getTransportation());
		vo.setTrekDistance(rt.getTrekDistance());
		vo.setMileage(rt.getMileage());
		vo.setMountStyle(rt.getMountStyle());
		vo.setRcdDays(rt.getRcdDays());
		vo.setDifficultyRate(rt.getDifficultyRate());
		List<Integer> diff = Lists.newArrayList();
		for(int i=0;i<rt.getDifficultyRate();i++){
			diff.add(1);
		}
		vo.setDiffRate(diff);
		List<Integer> undiffRate = Lists.newArrayList();
		for(int i=0;i<5-rt.getDifficultyRate();i++){
			undiffRate.add(1);
		}
		vo.setUndiffRate(undiffRate);
		vo.setQuotoForm(rt.getQuotoForm());
		return vo;
	}
}

