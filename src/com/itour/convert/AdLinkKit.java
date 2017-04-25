package com.itour.convert;

import java.util.Map;
import com.google.common.collect.Maps;
import com.itour.entity.AdLink;
import com.itour.vo.AdLinkVo;

public class AdLinkKit {
	public static AdLink toEntity(AdLinkVo vo)throws Exception{
		AdLink adlink = new AdLink();
		adlink.setId(vo.getId());
		adlink.setAdvertise(vo.getAdvertise());
		adlink.setLink(vo.getLink());
		return adlink;
	}
	public static AdLinkVo toVo(AdLink vo)throws Exception{
		AdLinkVo adlink = new AdLinkVo();
		adlink.setId(vo.getId());
		adlink.setAdvertise(vo.getAdvertise());
		adlink.setLink(vo.getLink());
		return adlink;
	}
	public static Map<String,String> toRecord(AdLink vo){
		Map<String,String> map = Maps.newHashMap();
		map.put("id", vo.getId());
		map.put("advertise",vo.getAdvertise());
		map.put("link", vo.getLink());
		return map;
	}
}
