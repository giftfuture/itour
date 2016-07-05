package com.itour.dao;

import com.itour.base.dao.BaseDao;
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
	public SysMenuBtn queryLogin(SysUserModel model);
	
	
	/**
	 * 查询邮箱总数，检查是否存在
	 * @param email
	 * @return
	 */
	public int getUserCountByEmail(String email);
}
