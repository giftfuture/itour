package com.itour.service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;
import com.itour.base.page.BasePage;
import com.itour.base.service.BaseService;
import com.itour.convert.TravelItemKit;
import com.itour.dao.TravelItemDao;
import com.itour.entity.TravelItem;
import com.itour.vo.TravelItemVo;

/**
 * 
 * <br>
 * <b>功能：</b>TravelItemService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("travelItemService")
public class TravelItemService<T> extends BaseService<T> {
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	
	@Autowired
    private TravelItemDao<T> mapper;
	/**
	 * 分页查询
	 * 
	 * @param pageQuery 查询条件
	 * @return 查询结果
	 */
	@SuppressWarnings("unchecked")
	public BasePage<TravelItemVo> pagedQuery(TravelItemVo vo) {
		List<TravelItem> list = (List<TravelItem>) mapper.queryByList(vo);
		int count = mapper.queryByCount(vo);
		List<TravelItemVo> records = Lists.newArrayList();
		for(TravelItem fb:list) {
			records.add(TravelItemKit.toRecord(fb));
		}
		return new BasePage<TravelItemVo>(vo.getStart(), vo.getLimit(), records, count);
	}
	/**
	 * 
	 * @param alias
	 * @return
	 * @throws Exception
	 */
	public TravelItem getByAlias(String alias)throws Exception{
		return mapper.getByAlias(alias);
	}
	public TravelItemDao<T> getDao() {
		return mapper;
	}
	/**
	 * 
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public List<TravelItem> searchTravelItem(Map map)throws Exception{
	   return mapper.searchTravelItem(map);
	}
	/**
	 * 
	 * @param scopeAlias
	 * @return
	 */
	public 	List<TravelItem> queryByScopeAlias(String scopeAlias){
		return mapper.queryByScopeAlias(scopeAlias);
	};
	
	/**
	 * 
	 * @param scope
	 * @return
	 */
	public 	List<TravelItem> queryByScope(String scope){
		return mapper.queryByScope(scope);
	}
	/**
	 * @param style
	 * @return
	 * @throws Exception
	 */
	public List<TravelItem> queryByStyle(String style)throws Exception{
		return mapper.queryByStyle(style);
	}
	/**
	 * 
	 * @param ids
	 * @return
	 * @throws Exception
	 */
	public List<TravelItem> queryByIds(List<String> ids)throws Exception{
		return mapper.queryByIds(ids);
	};
	
	/**
	 * 
	 * @return
	 */
	public List<HashMap<String,String>> allScopes(){
		List<HashMap<String,String>> maps = mapper.allScopes();
		return maps;
	};
	
	public List<HashMap<String,String>> allItems(){
		List<HashMap<String,String>> maps = mapper.allItems();
		return maps;
	};
}
