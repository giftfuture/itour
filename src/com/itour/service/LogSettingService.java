package com.itour.service;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.LogSettingDao;

/**
 * 
 * <br>
 * <b>功能：</b>LogSettingService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("logSettingService")
public class LogSettingService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(LogSettingService.class);

	@Autowired
    private LogSettingDao<T> dao;

		
	public LogSettingDao<T> getDao() {
		return dao;
	}

}
