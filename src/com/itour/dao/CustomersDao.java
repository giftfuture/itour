package com.itour.dao;


import java.util.HashMap;
import java.util.List;

import com.itour.base.dao.BaseDao;
/**
 * 
 * <br>
 * <b>功能：</b>CustomersDao<br>
 * <b>作者：</b>fred<br>
 * <b>日期：</b> Jul 2, 2016 <br>
 */
public interface CustomersDao<Customers> extends BaseDao<Customers> {
	
	
	/**
	 *查询全部有效的权限
	 * @return
	 */
	public List<Customers> queryByList(HashMap map);
	
	
	/**
	 *根据用户Id查询权限
	 * @return
	 */
	public List<Customers> queryById(Integer customerid);
}
