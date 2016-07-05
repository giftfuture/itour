package com.itour.dao;

import java.util.List;

import com.itour.base.dao.BaseDao;

/**
 * SysMenuBtn Mapper
 * @author Administrator
 *
 */
public interface SysMenuBtnDao<SysMenuBtn> extends BaseDao<SysMenuBtn> {
	
	public List<SysMenuBtn> queryByMenuid(Integer menuid);
	
	public List<SysMenuBtn> queryByMenuUrl(String url); 
	
	public void deleteByMenuid(Integer menuid);
	
	public List<SysMenuBtn> getMenuBtnByUser(Integer userid); 
	
	
	public List<SysMenuBtn> queryByAll();
}
