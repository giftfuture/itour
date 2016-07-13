package com.itour.service;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.QuotationDao;

/**
 * 
 * <br>
 * <b>功能：</b>QuotationService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("quotationService")
public class QuotationService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(QuotationService.class);

	@Autowired
    private QuotationDao<T> dao;

		
	public QuotationDao<T> getDao() {
		return dao;
	}

}
