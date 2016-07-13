package com.itour.service;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.SysVariablesDao;

/**
 * 
 * <br>
 * <b>功能：</b>SysVariablesService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("sysVariablesService")
public class SysVariablesService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(SysVariablesService.class);

	@Autowired
    private SysVariablesDao<T> dao;

		
	public SysVariablesDao<T> getDao() {
		return dao;
	}

}
