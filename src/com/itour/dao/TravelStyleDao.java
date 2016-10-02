package com.itour.dao;


import java.util.List;

import com.itour.base.dao.BaseDao;
import com.itour.entity.TravelStyle;
/**
 * 
 * <br>
 * <b>功能：</b>TravelStyleDao<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2013 <br>
 */
public interface TravelStyleDao<T> extends BaseDao<T> {
	
	List<TravelStyle> queryValid();
}
