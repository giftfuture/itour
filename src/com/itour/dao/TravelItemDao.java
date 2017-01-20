package com.itour.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itour.base.dao.BaseDao;
import com.itour.base.dao.FblMapResultHandler;
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
	List<TravelItem> queryByStyle(@Param(value="travelStyle")String travelStyle);
	/**
	 * 
	 * @param scopeAlias
	 * @return
	 */
	List<TravelItem> queryByScopeAlias(@Param(value="scopeAlias")String scopeAlias);
	/**
	 * 
	 * @param ids
	 * @return
	 */
	List<TravelItem> queryByIds(List<String> ids);
	/**
	 * 
	 * @param item
	 * @return
	 */
	TravelItem getByAlias(@Param(value="alias")String alias);
	
	/**
	 * 加载所有地区，省份 List<Map<String, String>>
	 * @return
	 */
	 List<Map<String,String>> allScopes();/*{
		FblMapResultHandler fbl = new FblMapResultHandler();  
		//getSqlSession().select(NAMESPACE +"getAllSetDays",fbl);  
		Map<String,String> map =fbl.getMappedResults();  
		return map;
	};*/
	/*   */
	
}
