package com.itour.dao;

import java.util.List;

import com.itour.base.dao.BaseDao;

/**
 * SysMenu Mapper
 * @author Administrator
 *
 */
public interface SysMenuDao<SysMenuBtn> extends BaseDao<SysMenuBtn> {
	
	/**
	 * 查询所有系统菜单列表
	 * @return
	 */
	public List<SysMenuBtn> queryByAll();
	
	
	/**
	 * 获取顶级菜单
	 * @return
	 */
	public List<SysMenuBtn> getRootMenu(java.util.Map map);
	
	/**
	 * 获取子菜单
	 * @return
	 */
	public List<SysMenuBtn> getChildMenu();
	
	

	/**
	 * 根据权限id查询菜单
	 * @param roleId
	 * @return
	 */
	public List<SysMenuBtn> getMenuByRoleId(String roleId);
	
	
	/**
	 * 根据用户id查询父菜单菜单
	 * @param userId
	 * @return
	 */
	public List<SysMenuBtn> getRootMenuByUser(String userId);
	
	/**
	 * 根据用户id查询子菜单菜单
	 * @param userId
	 * @return
	 */
	public List<SysMenuBtn> getChildMenuByUser(String userId);
	
}
