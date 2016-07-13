package com.itour.service;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.TravelOrderDao;

/**
 * 
 * <br>
 * <b>功能：</b>TravelOrderService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("travelOrderService")
public class TravelOrderService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(TravelOrderService.class);

	@Autowired
    private TravelOrderDao<T> dao;

		
	public TravelOrderDao<T> getDao() {
		return dao;
	}

}
