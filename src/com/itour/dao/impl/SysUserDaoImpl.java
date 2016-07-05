package com.itour.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.itour.base.dao.BaseDao;
import com.itour.base.page.BasePage;
import com.itour.dao.SysUserDao;
import com.itour.page.SysUserModel;

/**
 * SysUser Mapper
 * @author Administrator
 *
 */
@Repository("sysUserDao")
public class SysUserDaoImpl<SysUser> implements SysUserDao<SysUser> {

	@Override
	public void add(SysUser t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(SysUser t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateBySelective(SysUser t) {
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
	public List<SysUser> queryByList(BasePage page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SysUser queryById(Object id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SysUser queryLogin(SysUserModel model) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getUserCountByEmail(String email) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
