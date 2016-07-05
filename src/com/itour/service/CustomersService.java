package com.itour.service;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.CustomersDao;

/**
 * 
 * <br>
 * <b>功能：</b>customersService<br>
 * <b>作者：</b>fred<br>
 * <b>日期：</b> Jul 2, 2016 <br>
 */
@Service("customersService")
public class CustomersService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(CustomersService.class);
	

	

	@Autowired
    private CustomersDao<T> dao;

		
	public CustomersDao<T> getDao() {
		return dao;
	}

}
