package com.itour.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;
import com.itour.base.jdbc.JDBCDao;
import com.itour.base.page.BasePage;
import com.itour.base.service.BaseService;
import com.itour.convert.ShowHappyKit;
import com.itour.dao.ShowHappyDao;
import com.itour.entity.ShowHappy;
import com.itour.vo.ShowHappyVo;

/**
 * 
 * <br>
 * <b>功能：</b>CustomersService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("showHappyService")
public class ShowHappyService extends BaseService<ShowHappy> {
	protected final Logger logger =  LoggerFactory.getLogger(getClass());

	@Autowired
    private ShowHappyDao mapper;
									
	public ShowHappyDao getDao(){
		return mapper;
	}
	public void addShowHappy(ShowHappy sh)throws Exception{
		 mapper.add(sh);
	}
	public ShowHappy queryByCode(String shCode){
		return (ShowHappy) mapper.queryByCode(shCode);
	}
	/**
	 * 分页查询
	 * 
	 * @param pageQuery 查询条件
	 * @return 查询结果
	 */
	@SuppressWarnings("unchecked")
	public BasePage<Map<String, Object>> pagedQuery(ShowHappyVo vo) {
		List<ShowHappy> list = mapper.queryByList(vo);
		int count = mapper.queryByCount(vo);
		//BasePage<CustomerVo> basepage = (BasePage<CustomerVo>)mapper.pagedQuery(page);
		//Map<String, String> map = Maps.newHashMap();
		List<Map<String, Object>> records = Lists.newArrayList();
		for(int i = 0; i < list.size(); i++) {
			ShowHappy sh = list.get(i);
			records.add(ShowHappyKit.toRecord(sh));
		}
		return new BasePage<Map<String, Object>>(vo.getStart(), vo.getLimit(), records, count);
	}
	
	
}
