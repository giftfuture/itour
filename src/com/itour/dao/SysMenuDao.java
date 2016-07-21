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
	List<SysMenuBtn> queryByAll();
	
	
	/**
	 * 获取顶级菜单
	 * @return
	 */
	List<SysMenuBtn> getRootMenu(java.util.Map map);
	
	/**
	 * 获取子菜单
	 * @return
	 */
	List<SysMenuBtn> getChildMenu(java.util.Map map);
	
	

	/**
	 * 根据权限id查询菜单
	 * @param roleId
	 * @return
	 */
	List<SysMenuBtn> getMenuByRoleId(java.util.Map map);
	
	
	/**
	 * 根据用户id查询父菜单菜单
	 * @param userId
	 * @return
	 */
	List<SysMenuBtn> getRootMenuByUser(java.util.Map map);
	
	/**
	 * 根据用户id查询子菜单菜单
	 * @param userId
	 * @return
	 */
	List<SysMenuBtn> getChildMenuByUser(java.util.Map map);
	
	/**
	 * 获取表中最大rank
	 * @return
	 */
	int maxRank();
	
}
