package com.itour.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;
import com.itour.base.page.BasePage;
import com.itour.base.service.BaseService;
import com.itour.convert.QuotationKit;
import com.itour.convert.RouteTemplateKit;
import com.itour.dao.RouteTemplateDao;
import com.itour.entity.Quotation;
import com.itour.entity.RouteTemplate;
import com.itour.vo.QuotationVo;
import com.itour.vo.RouteTemplateVo;

/**
 * 
 * <br>
 * <b>功能：</b>RouteTemplateService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("routeTemplateService")
public class RouteTemplateService<T> extends BaseService<T> {
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	
	/**
	 * 分页查询
	 * 
	 * @param pageQuery 查询条件
	 * @return 查询结果
	 */
	@SuppressWarnings("unchecked")
	public BasePage<RouteTemplateVo> pagedQuery(RouteTemplateVo vo) {
		List<RouteTemplate> list = (List<RouteTemplate>) mapper.queryByList(vo);
		int count = mapper.queryByCount(vo);
		List<RouteTemplateVo> records = Lists.newArrayList();
		for(RouteTemplate fb:list) {
			records.add(RouteTemplateKit.toRecord(fb));
		}
		return new BasePage<RouteTemplateVo>(vo.getStart(), vo.getLimit(), records,count);
	}
	
	@Autowired
    private RouteTemplateDao<T> mapper;

		
	public RouteTemplateDao<T> getDao() {
		return mapper;
	}

}
