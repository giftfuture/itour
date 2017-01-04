package com.itour.service;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.FeedbackDao;
import com.itour.entity.Feedback;

/**
 * 
 * <br>
 * <b>功能：</b>FeedbackService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("feedbackService")
public class FeedbackService extends BaseService<Feedback> {
	private final static Logger log= Logger.getLogger(FeedbackService.class);

	@Autowired
    private FeedbackDao mapper;

		
	public FeedbackDao getDao() {
		return mapper;
	}

}
