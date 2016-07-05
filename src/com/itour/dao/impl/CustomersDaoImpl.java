package com.itour.dao.impl;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.itour.base.dao.BaseDao;
import com.itour.base.page.BasePage;
import com.itour.dao.CustomersDao;
/**
 * 
 * <br>
 * <b>功能：</b>CustomersDao<br>
 * <b>作者：</b>fred<br>
 * <b>日期：</b> Jul 2, 2016 <br>
 */
@Repository("customersDao")
public class CustomersDaoImpl<Customers> implements CustomersDao<Customers> {

	@Override
	public void add(Customers t) {
		
	}

	@Override
	public void update(Customers t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateBySelective(Customers t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Object id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int queryByCount(BasePage page) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Customers> queryByList(BasePage page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customers queryById(Object id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
