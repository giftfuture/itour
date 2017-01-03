package com.itour.service;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.itour.base.page.BasePage;
import com.itour.base.service.BaseService;
import com.itour.convert.CustomerKit;
import com.itour.dao.CustomersDao;
import com.itour.entity.Customers;
import com.itour.vo.CustomerVo;

/**
 * 
 * <br>
 * <b>功能：</b>CustomersService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("customersService")
public class CustomersService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(CustomersService.class);

	@Autowired
    private CustomersDao<T> mapper;

		
	public CustomersDao<T> getDao() {
		return mapper;
	}

	/**
	 * 分页查询
	 * 
	 * @param pageQuery 查询条件
	 * @return 查询结果
	 */

	public BasePage<Map<String, Object>> pagedQuery(BasePage page) {
		List<CustomerVo> list = (List<CustomerVo>) mapper.queryByList(page);
		BasePage<CustomerVo> basepage = null;//(BasePage<CustomerVo>)mapper.pagedQuery(page);
		//List<AuthPermissionEntity> list = authPermissionDao.findAll();
		Map<String, String> map = Maps.newHashMap();
		for (int i = 0; i < list.size(); i++) {
			CustomerVo vo = list.get(i);
			//map.put(authPermissionVo.getId(), authPermissionVo.getName());
		}
		List<Map<String, Object>> record = Lists.newArrayList();
		for (CustomerVo vo : basepage.getRecords()) {
			record.add(CustomerKit.toRecord(vo));
			//record.add(AuthPermissionKit.toRecord(map, entity));
		}
		return new BasePage<Map<String, Object>>(page.getStart(), page.getLimit(), record, page.getTotal());
	}
}
