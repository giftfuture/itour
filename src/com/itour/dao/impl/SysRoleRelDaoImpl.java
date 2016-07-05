package com.itour.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.itour.base.dao.BaseDao;
import com.itour.base.page.BasePage;
import com.itour.dao.SysRoleRelDao;
import com.itour.entity.SysRoleRel;

/**
 * SysRoleRel Mapper
 * @author Administrator
 *
 */
@Repository("sysRoleRelDao")
public class SysRoleRelDaoImpl<SysRoleRel> implements SysRoleRelDao<SysRoleRel> {

	@Override
	public void add(SysRoleRel t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(SysRoleRel t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateBySelective(SysRoleRel t) {
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
	public List<SysRoleRel> queryByList(BasePage page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SysRoleRel queryById(Object id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteByRoleId(Map<String, Object> param) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteByObjId(Map<String, Object> param) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<com.itour.entity.SysRoleRel> queryByRoleId(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<com.itour.entity.SysRoleRel> queryByObjId(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
}
