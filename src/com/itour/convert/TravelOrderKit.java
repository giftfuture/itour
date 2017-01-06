package com.itour.convert;

import com.itour.base.util.DateUtil;
import com.itour.entity.TravelOrder;
import com.itour.vo.TravelOrderVo;
/**
 * 
 * <br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class TravelOrderKit{
	
	public static TravelOrderVo toRecord(TravelOrder to)throws Exception{
		TravelOrderVo tv = new TravelOrderVo();
		tv.setBank(to.getBank());
		tv.setBudget(to.getBudget());
		tv.setCreateTime(DateUtil.getDateYmdHs(to.getCreateTime()));
		tv.setCustomerId(to.getCustomerId());
		tv.setExpectedBack(DateUtil.getDateYmdHs(to.getExpectedBack()));
		tv.setExpectedDepart(DateUtil.getDateYmdHs(to.getExpectedDepart()));
		tv.setId(to.getId());
		tv.setIsPayed(to.getIsPayed());
		tv.setOrderItems(to.getOrderItems());
		tv.setOrderName(to.getOrderName());
		tv.setOrderNo(to.getOrderNo());
		tv.setOrderStatus(to.getOrderStatus());
		tv.setPayAccount(to.getPayAccount());
		tv.setPayPlatform(to.getPayPlatform());
		tv.setPayTerminal(to.getPayTerminal());
		tv.setPayTime(DateUtil.getDateYmdHs(to.getPayTime()));
		tv.setPayType(to.getPayType());
		tv.setReceiver(to.getReceiver());
		tv.setReceiverMobile(to.getReceiverMobile());
		tv.setRemark(to.getRemark());
		tv.setTotalStaff(to.getTotalStaff());
		tv.setUpdateTime(DateUtil.getDateYmdHs(to.getUpdateTime()));
		return tv;
	}
}

