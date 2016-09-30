package com.itour.dao;


import java.util.HashMap;
import java.util.List;

import com.itour.base.dao.BaseDao;
import com.itour.entity.TravelItem;
/**
 * 
 * <br>
 * <b>功能：</b>TravelItemDao<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2013 <br>
 */
public interface TravelItemDao<T> extends BaseDao<T> {
	
	List<TravelItem> searchTravelItem(HashMap map);
	List<TravelItem> queryByStyle(String style);
}
