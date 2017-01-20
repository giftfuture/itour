package com.itour.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itour.base.dao.BaseDao;
import com.itour.entity.RouteTemplate;
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
	 * @param alias
	 * @return
	 */
	RouteTemplate queryByAlias(@Param(value="alias")String alias);
	
}
