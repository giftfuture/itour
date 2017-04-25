package com.itour.convert;

import java.util.Map;

import com.google.common.collect.Maps;
import com.itour.base.util.DateUtil;
import com.itour.entity.Areas;
import com.itour.entity.LevelArea;
import com.itour.vo.AreasVo;
import com.itour.vo.LevelAreaVo;

public class LevelAreaKit {
	public static LevelArea toEntity(LevelAreaVo vo)throws Exception{
		LevelArea areas = new LevelArea();
		areas.setId(vo.getId());
		areas.setLevel1Area(vo.getLevel1Area());
		areas.setLevel2Area(vo.getLevel2Area());
		areas.setTravelItem(vo.getTravelItem());
		areas.setCreateBy(vo.getCreateBy());
		areas.setUpdateBy(vo.getUpdateBy());
		areas.setCreateTime(DateUtil.fromStringToDate(DateUtil.y_m_dhms, vo.getCreateTime()));
		areas.setUpdateTime(DateUtil.fromStringToDate(DateUtil.y_m_dhms, vo.getUpdateTime()));
		areas.setRemark(vo.getRemark());
		areas.setAliasCode(vo.getAliasCode());
		areas.setValid(vo.isValid());
		return areas;
	}
	public static LevelAreaVo toVo(LevelArea vo)throws Exception{
		LevelAreaVo areas = new LevelAreaVo();
		areas.setId(vo.getId());
		areas.setLevel1Area(vo.getLevel1Area());
		areas.setLevel2Area(vo.getLevel2Area());
		areas.setTravelItem(vo.getTravelItem());
		areas.setCreateBy(vo.getCreateBy());
		areas.setUpdateBy(vo.getUpdateBy());
		areas.setCreateTime(DateUtil.getDateYmdHs(vo.getCreateTime()));
		areas.setUpdateTime(DateUtil.getDateYmdHs(vo.getUpdateTime()));
		areas.setRemark(vo.getRemark());
		areas.setAliasCode(vo.getAliasCode());
		areas.setValid(vo.isValid());
		return areas;
	}
	public static Map<String,String> toRecord(LevelArea vo){
		Map<String,String> map = Maps.newHashMap();
		map.put("id", vo.getId());
		map.put("level1Area",vo.getLevel1Area());
		map.put("level2Area", vo.getLevel2Area());
		map.put("travelItem", vo.getTravelItem());
		map.put("remark", vo.getRemark());
		map.put("createBy", vo.getCreateBy());
		map.put("updateBy", vo.getUpdateBy());
		map.put("createTime", DateUtil.getDateYmdHs(vo.getCreateTime()));
		map.put("updateTime", DateUtil.getDateYmdHs(vo.getUpdateTime()));
		map.put("aliasCode", vo.getAliasCode());
		map.put("valid", vo.isValid()?"是":"否");
		return map;
	}
}
