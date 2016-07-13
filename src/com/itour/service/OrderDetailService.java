package com.itour.service;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.OrderDetailDao;

/**
 * 
 * <br>
 * <b>功能：</b>OrderDetailService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("orderDetailService")
public class OrderDetailService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(OrderDetailService.class);

	@Autowired
    private OrderDetailDao<T> dao;

		
	public OrderDetailDao<T> getDao() {
		return dao;
	}

}
