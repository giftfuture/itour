package com.itour.convert;

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
		return vo;
	}
}

