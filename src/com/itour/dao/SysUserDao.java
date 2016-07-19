package com.itour.dao;

import java.util.HashMap;

import com.itour.base.dao.BaseDao;
import com.itour.entity.SysUser;
import com.itour.page.SysUserModel;

/**
 * SysUser Mapper
 * @author Administrator
 *
 */
public interface SysUserDao<SysMenuBtn> extends BaseDao<SysMenuBtn> {
	
	/**
	 * 检查登录
	 * @param email
	 * @param pwd
	 * @return
	 */
	SysMenuBtn queryLogin(SysUserModel model);
	
	
	/**
	 * 查询邮箱总数，检查是否存在
	 * @param email
	 * @return
	 */
	int getUserCountByEmail(String email);
	
	/**
	 * 
	 * @param map
	 * @return
	 */
	void updateCode(HashMap map);
	
	/**
	 * 
	 * @param email
	 * @return
	 */
	SysUser getUserByEmail(String email);
}
