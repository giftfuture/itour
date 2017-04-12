package com.itour.convert;

import java.text.ParseException;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.google.common.collect.Maps;
import com.itour.base.util.DateUtil;
import com.itour.entity.OrderDetail;
import com.itour.vo.OrderDetailVo;
/**
 * 
 * <br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class OrderDetailKit{
	public static OrderDetailVo toRecord(OrderDetail od){
		OrderDetailVo vo  = new OrderDetailVo();
		vo.setContent(od.getContent());
		vo.setCount(od.getCount());
		vo.setCreateTime(DateUtil.getDateYmdHs(od.getCreateTime()));
		vo.setId(od.getId());
		vo.setOrderId(od.getOrderId());
		vo.setPerPrice(od.getPerPrice());
		vo.setRemark(od.getRemark());
		vo.setStatus(od.getStatus());
		vo.setUpdateTime(DateUtil.getDateYmdHs(od.getUpdateTime()));
		vo.setValid(od.isValid());
		vo.setGroupCode(od.getGroupCode());
		vo.setAdults(od.getAdults());
		vo.setChildren(od.getChildren());
		if(od.getGroupDate() !=null){
			vo.setGroupDate(DateUtil.getDateYmdCn(od.getGroupDate()));
		}
		return vo;
	}
	public static OrderDetail toEntity(OrderDetailVo od){
		OrderDetail vo  = new OrderDetail();
		vo.setContent(od.getContent());
		vo.setCount(od.getCount());
		vo.setId(od.getId());
		vo.setOrderId(od.getOrderId());
		vo.setPerPrice(od.getPerPrice());
		vo.setRemark(od.getRemark());
		vo.setStatus(od.getStatus());
		vo.setValid(od.isValid());
		vo.setGroupCode(od.getGroupCode());
		vo.setAdults(od.getAdults());
		vo.setChildren(od.getChildren());
		try {
			if(StringUtils.isNotEmpty(od.getCreateTime())){
				vo.setCreateTime(DateUtil.fromStringToDate(DateUtil.ymdhms,od.getCreateTime()));
			}
			if(StringUtils.isNotEmpty(od.getUpdateTime())){
				vo.setUpdateTime(DateUtil.fromStringToDate(DateUtil.ymdhms,od.getUpdateTime()));
			}
			if(StringUtils.isNotEmpty(od.getGroupDate())){
				vo.setCreateTime(DateUtil.fromStringToDate(DateUtil.ymdhms,od.getGroupDate()));
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return vo;
	}
	/**
	 * 
	 * @param od
	 * @return
	 */
	public static Map<String,String> toMap(OrderDetail od){
		Map<String,String> map = Maps.newHashMap();
		map.put("content", od.getContent());
		map.put("count", od.getCount()+"");
		map.put("createTime", DateUtil.getDateYmdHs(od.getCreateTime()));
		map.put("id", od.getId());
		map.put("orderId", od.getOrderId());
		map.put("perPrice", od.getPerPrice()+"");
		map.put("remark", od.getRemark());
		map.put("status", od.getStatus()+"");
		map.put("updateTime",DateUtil.getDateYmdHs(od.getUpdateTime()));
		map.put("isValid", od.isValid()+"");
		map.put("groupCode", od.getGroupCode());
		map.put("adults", od.getAdults()+"");
		map.put("children", od.getChildren()+"");
		map.put("groupDate", DateUtil.getDateYmdCn(od.getGroupDate()));
		return map;
	}
}

