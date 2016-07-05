package com.itour.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.itour.base.dao.BaseDao;
import com.itour.base.page.BasePage;
import com.itour.dao.SysMenuDao;

/**
 * SysMenu Mapper
 * @author Administrator
 *
 */
@Repository("sysMenuDao")
public class SysMenuDaoImpl<SysMenu> implements SysMenuDao<SysMenu> {

	@Override
	public void add(SysMenu t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(SysMenu t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateBySelective(SysMenu t) {
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
	public List<SysMenu> queryByList(BasePage page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SysMenu queryById(Object id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SysMenu> queryByAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SysMenu> getRootMenu(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SysMenu> getChildMenu() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SysMenu> getMenuByRoleId(Integer roleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SysMenu> getRootMenuByUser(Integer userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SysMenu> getChildMenuByUser(Integer userId) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
