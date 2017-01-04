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
public class CustomersService extends BaseService<Customers> {
	private final static Logger log= Logger.getLogger(CustomersService.class);

	@Autowired
    private CustomersDao mapper;
		
	public CustomersDao getDao(){
		return mapper;
	}

	/**
	 * 分页查询
	 * 
	 * @param pageQuery 查询条件
	 * @return 查询结果
	 */

	@SuppressWarnings("unchecked")
	public BasePage<Map<String, Object>> pagedQuery(CustomerVo vo) {
	//	CustomerVo vo = new CustomerVo();
		List<Customers> list = mapper.queryByList(vo);
		//BasePage<CustomerVo> basepage = (BasePage<CustomerVo>)mapper.pagedQuery(page);
		//Map<String, String> map = Maps.newHashMap();
		List<Map<String, Object>> records = Lists.newArrayList();
		for(int i = 0; i < list.size(); i++) {
			Customers customers = list.get(i);
			records.add(CustomerKit.toRecord(customers));
			//map.put(authPermissionVo.getId(), authPermissionVo.getName());
		}
		return new BasePage<Map<String, Object>>(vo.getStart(), vo.getLimit(), records, vo.getPager().getRowCount());
	}
}
