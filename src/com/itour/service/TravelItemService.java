package com.itour.service;

import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.service.BaseService;
import com.itour.dao.TravelItemDao;
import com.itour.entity.TravelItem;

/**
 * 
 * <br>
 * <b>功能：</b>TravelItemService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("travelItemService")
public class TravelItemService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(TravelItemService.class);
	
	@Autowired
    private TravelItemDao<T> mapper;

		
	public TravelItemDao<T> getDao() {
		return mapper;
	}
	public List<TravelItem> searchTravelItem(HashMap map)throws Exception{
	   return mapper.searchTravelItem(map);
	}
	
	public List<TravelItem> queryByStyle(String style)throws Exception{
		return mapper.queryByStyle(style);
	}
}
