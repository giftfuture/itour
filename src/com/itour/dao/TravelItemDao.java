package com.itour.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

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
	/**
	 * 
	 * @param map
	 * @return
	 */
	List<TravelItem> searchTravelItem(Map map);
	
	/**
	 * 
	 * @param style
	 * @return
	 */
	List<TravelItem> queryByStyle(String style);
	
	/**
	 * 
	 * @param item
	 * @return
	 */
	TravelItem getByAlias(@Param(value="alias")String alias);
}
