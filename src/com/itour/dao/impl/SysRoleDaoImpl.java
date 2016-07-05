package com.itour.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.itour.base.dao.BaseDao;
import com.itour.base.page.BasePage;
import com.itour.dao.SysRoleDao;

/**
 * SysRole Mapper
 * @author Administrator
 *
 */
@Repository("sysRoleDao")
public class SysRoleDaoImpl<SysRole> implements SysRoleDao<SysRole> {

	@Override
	public void add(SysRole t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(SysRole t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateBySelective(SysRole t) {
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
	public List<SysRole> queryByList(BasePage page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SysRole queryById(Object id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SysRole> queryAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SysRole> queryByUserid(Integer userid) {
		// TODO Auto-generated method stub
		return null;
	}

}
