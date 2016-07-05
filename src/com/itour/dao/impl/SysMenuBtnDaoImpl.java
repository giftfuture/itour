package com.itour.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.itour.base.dao.BaseDao;
import com.itour.base.page.BasePage;
import com.itour.dao.SysMenuBtnDao;

/**
 * SysMenuBtn Mapper
 * @author Administrator
 *
 */
@Repository("sysMenuBtnDao")
public class SysMenuBtnDaoImpl<SysMenuBtn> implements SysMenuBtnDao<SysMenuBtn> {

	@Override
	public void add(SysMenuBtn t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(SysMenuBtn t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateBySelective(SysMenuBtn t) {
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
	public List<SysMenuBtn> queryByList(BasePage page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SysMenuBtn queryById(Object id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SysMenuBtn> queryByMenuid(Integer menuid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SysMenuBtn> queryByMenuUrl(String url) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteByMenuid(Integer menuid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<SysMenuBtn> getMenuBtnByUser(Integer userid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SysMenuBtn> queryByAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
