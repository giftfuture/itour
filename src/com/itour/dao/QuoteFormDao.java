package com.itour.dao;

import org.apache.ibatis.annotations.Param;

import com.itour.base.dao.BaseDao;
import com.itour.entity.QuoteForm;

public interface QuoteFormDao extends BaseDao<QuoteForm> {
	public QuoteForm queryByRtId(@Param(value="routeTemplate")String routeTemplate); 
}
