package com.itour.service;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.TravelItemDao;

/**
 * 
 * <br>
 * <b>功能：</b>TravelItemService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("travelItemService")
public class TravelItemService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(TravelItemService.class);

	@Autowired
    private TravelItemDao<T> dao;

		
	public TravelItemDao<T> getDao() {
		return dao;
	}

}
