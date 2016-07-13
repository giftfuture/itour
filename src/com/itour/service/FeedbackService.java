package com.itour.service;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.FeedbackDao;

/**
 * 
 * <br>
 * <b>功能：</b>FeedbackService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("feedbackService")
public class FeedbackService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(FeedbackService.class);

	@Autowired
    private FeedbackDao<T> dao;

		
	public FeedbackDao<T> getDao() {
		return dao;
	}

}
