package com.itour.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.LogOperationDao;

/**
 * 
 * <br>
 * <b>功能：</b>LogOperationService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("logOperationService")
public class LogOperationService<T> extends BaseService<T> {
	protected final Logger logger =  LoggerFactory.getLogger(getClass());

	@Autowired
    private LogOperationDao<T> dao;

		
	public LogOperationDao<T> getDao() {
		return dao;
	}

}
