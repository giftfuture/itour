package com.itour.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;
import com.itour.base.page.BasePage;
import com.itour.base.service.BaseService;
import com.itour.convert.RouteTemplateKit;
import com.itour.dao.RouteTemplateDao;
import com.itour.entity.RouteTemplate;
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
	/**
	 * 
	 * @param style
	 * @return
	 * @throws Exception
	 */
	public List<RouteTemplateVo> queryByStyle(String style)throws Exception{
		List<RouteTemplate> list = mapper.queryByStyle(style);
		List<RouteTemplateVo> vos = Lists.newArrayList();
		for(RouteTemplate rt :list){
			vos.add(RouteTemplateKit.toRecord(rt));
		}
		return vos;
	}
	/**
	 * 
	 * @param related
	 * @return
	 * @throws Exception
	 */
	public List<RouteTemplateVo> queryByRelated(List<String> related)throws Exception{
		List<RouteTemplate> list = mapper.queryByRelated(related);
		List<RouteTemplateVo> vos = Lists.newArrayList();
		for(RouteTemplate rt:list){
			vos.add(RouteTemplateKit.toRecord(rt));
		}
		return vos;
	}
	
	/**
	 * 
	 * @param travelItems
	 * @return
	 * @throws Exception
	 */
	public List<RouteTemplateVo> queryByItems(String travelItems)throws Exception{
		List<RouteTemplate> list = mapper.queryByItems(travelItems);
		List<RouteTemplateVo> vos = Lists.newArrayList();
		for(RouteTemplate rt:list){
			vos.add(RouteTemplateKit.toRecord(rt));
		}
		return vos;
	}
	/**
	 * 
	 * @param alias
	 * @return
	 * @throws Exception
	 */
	public RouteTemplateVo queryByAlias(String alias)throws Exception{
		RouteTemplate rt = mapper.queryByAlias(alias);
		return RouteTemplateKit.toRecord(rt);
	}
	
	/**
	 * 
	 * @param id
	 * @param quoteForm
	 */
	public void updateQuoteForm(RouteTemplate entity){
		mapper.update(entity);
	};
	/**
	 * 
	 * @param id
	 * @return
	 */
	public RouteTemplateVo selectById(String id){
		return mapper.selectById(id);
	}
	/**
	 * 
	 * @param routeCode
	 * @return
	 */
	public RouteTemplateVo selectByRouteCode(String routeCode){
		return mapper.selectByRouteCode(routeCode);
	}
	@Autowired
    private RouteTemplateDao<T> mapper;
		
	public RouteTemplateDao<T> getDao() {
		return mapper;
	}

}
