package com.itour.service;

import org.apache.log4j.Logger;

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
	private final static Logger log= Logger.getLogger(LogOperationService.class);

	@Autowired
    private LogOperationDao<T> dao;

		
	public LogOperationDao<T> getDao() {
		return dao;
	}

}
