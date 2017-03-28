package com.itour.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.MapKey;
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
	List<TravelItem> queryByStyle(@Param(value="travelStyle")String travelStyle);
	/**
	 * 
	 * @param scopeAlias
	 * @return
	 */
	List<TravelItem> queryByScopeAlias(@Param(value="scopeAlias")String scopeAlias);
	
	/**
	 * 
	 * @param scope
	 * @return
	 */
	List<TravelItem> queryByScope(@Param(value="scope")String scope);
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
	@MapKey("scopeAlias")
	 List<HashMap<String,String>> allScopes();/*{
		FblMapResultHandler fbl = new FblMapResultHandler();  
		//getSqlSession().select(NAMESPACE +"getAllSetDays",fbl);  
		Map<String,String> map =fbl.getMappedResults();  
		return map;
	};*/
	/*   */
	@MapKey("alias")
	public List<HashMap<String,String>> allItems();
	/**
	 * 
	 * @param tsIds
	 * @return
	 */
	public String travelItems(List<String> tsIds);
}
