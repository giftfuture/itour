package com.itour.convert;

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
		return vo;
	}
}

