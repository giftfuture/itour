package com.itour.service;

import java.util.List;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.TravelStyleDao;
import com.itour.entity.TravelStyle;

/**
 * 
 * <br>
 * <b>功能：</b>TravelStyleService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("travelStyleService")
public class TravelStyleService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(TravelStyleService.class);

	@Autowired
    private TravelStyleDao<T> mapper;

		
	public TravelStyleDao<T> getDao() {
		return mapper;
	}
	public List<TravelStyle> queryValid(){
		return mapper.queryValid();
	};
}
