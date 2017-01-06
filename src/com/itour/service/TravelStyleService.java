package com.itour.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;
import com.itour.base.page.BasePage;
import com.itour.base.service.BaseService;
import com.itour.convert.SysMenuKit;
import com.itour.convert.TravelStyleKit;
import com.itour.dao.TravelStyleDao;
import com.itour.entity.TravelStyle;
import com.itour.vo.TravelStyleVo;

/**
 * 
 * <br>
 * <b>功能：</b>TravelStyleService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("travelStyleService")
public class TravelStyleService<T> extends BaseService<T> {
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	/**
	 * 分页查询
	 * 
	 * @param pageQuery 查询条件
	 * @return 查询结果
	 */
	@SuppressWarnings("unchecked")
	public BasePage<TravelStyleVo> pagedQuery(TravelStyleVo vo) {
		List<TravelStyle> list = (List<TravelStyle>) mapper.queryByList(vo);
		int count = mapper.queryByCount(vo);
		List<TravelStyleVo> records = Lists.newArrayList();
		for(TravelStyle ts:list) {
			records.add(TravelStyleKit.toRecord(ts));
		}
		return new BasePage<TravelStyleVo>(vo.getStart(), vo.getLimit(), records, count);
	}
	
	@Autowired
    private TravelStyleDao<T> mapper;

		
	public TravelStyleDao<T> getDao() {
		return mapper;
	}
	public List<TravelStyle> queryValid(){
		return mapper.queryValid();
	};
}
