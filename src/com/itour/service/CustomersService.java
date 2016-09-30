package com.itour.service;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.CustomersDao;

/**
 * 
 * <br>
 * <b>功能：</b>CustomersService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("customersService")
public class CustomersService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(CustomersService.class);

	@Autowired
    private CustomersDao<T> mapper;

		
	public CustomersDao<T> getDao() {
		return mapper;
	}

}
