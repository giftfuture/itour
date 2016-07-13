package com.itour.service;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.RouteTemplateDao;

/**
 * 
 * <br>
 * <b>功能：</b>RouteTemplateService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("routeTemplateService")
public class RouteTemplateService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(RouteTemplateService.class);

	@Autowired
    private RouteTemplateDao<T> dao;

		
	public RouteTemplateDao<T> getDao() {
		return dao;
	}

}
