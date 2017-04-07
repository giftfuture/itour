package com.itour.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itour.base.dao.BaseDao;
import com.itour.entity.RouteTemplate;
import com.itour.vo.RouteTemplateVo;
/**
 * 
 * <br>
 * <b>功能：</b>RouteTemplateDao<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2013 <br>
 */
public interface RouteTemplateDao<T> extends BaseDao<T> {
	
	/**
	 * 
	 * @param style
	 * @return
	 */
	List<RouteTemplate> queryByStyle(@Param(value="travelStyle")String travelStyle);
	/**
	 * 
	 * @param related
	 * @return
	 */
	List<RouteTemplate> queryByRelated(List<String> ids);
	
	/**
	 * 
	 * @param travelItems
	 * @return
	 */
	List<RouteTemplate> queryByItems(@Param(value="travelItems")String travelItems);
	/**
	 * 
	 * @param alias
	 * @return
	 */
	RouteTemplate queryByAlias(@Param(value="alias")String alias);
	/**
	 * 
	 * @param id
	 * @param quoteForm
	 */
	public void update(RouteTemplate entity);//updateQuoteForm
	
	/**
	 * 
	 * @param id
	 * @return
	 */
	public RouteTemplateVo selectById(@Param(value="id")String id);
	
	/**
	 * 
	 * @param routeCode
	 * @return
	 */
	public RouteTemplate selectByRouteCode(@Param(value="routeCode")String routeCode);
	
	/**
	 * 
	 * @param map
	 * @return
	 */
	public List<RouteTemplateVo> searchRts(Map map);
	/**
	 * 
	 * @return
	 */
	List<RouteTemplateVo> queryAll();
	/**
	 * 
	 * @param vo
	 */
	void uploadCover(RouteTemplate vo);
	
	/**
	 * 
	 * @param vo
	 */
	void uploadMap(RouteTemplate vo);
	
	//RouteTemplate queryByRouteCode(@Param(value="routeCode")String routeCode);
	
}
