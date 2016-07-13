package com.itour.base.dao;

import java.util.List;

import com.itour.base.page.BasePage;

public interface BaseDao<T> {

	
	public void add(T t);
	
	
	public void update(T t);
	
	
	public void delete(String id);
	

	public int queryByCount(BasePage page);
	
	
	public List<T> queryByList(BasePage page);
	
	
	public T queryById(String id);
}
