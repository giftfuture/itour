package com.itour.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;
import com.itour.base.page.BasePage;
import com.itour.base.service.BaseService;
import com.itour.convert.CustomerKit;
import com.itour.convert.SysMenuKit;
import com.itour.dao.SysMenuDao;
import com.itour.entity.Customers;
import com.itour.entity.SysMenu;
import com.itour.entity.SysMenuBtn;
import com.itour.entity.SysRoleRel;
import com.itour.entity.SysRoleRel.RelType;
import com.itour.vo.CustomerVo;
import com.itour.vo.SysMenuVo;

/**
 * 
 * <br>
 * <b>功能：</b>SysMenuService<br>
 * <b>日期：</b> Jun 9, 2016 <br>
 */
@Service("sysMenuService")
public class SysMenuService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(SysMenuService.class);


	@Autowired(required=false)
	private SysRoleRelService<SysRoleRel> sysRoleRelService;
	
	@Autowired(required=false)
	private SysMenuBtnService<SysMenuBtn> sysMenuBtnService;
	
	@Autowired
    private SysMenuDao<T> mapper;
	
	/**
	 * 保存菜单btn
	 * @param btns
	 * @throws Exception 
	 */
	public void saveBtns(SysMenu menu,List<SysMenuBtn> btns) throws Exception{
		if(btns == null || btns.isEmpty()){
			return;
		}
		for (SysMenuBtn btn : btns) {
			if(btn.getId()!= null && "1".equals(btn.getDeleteFlag())){
				sysMenuBtnService.delete(btn.getId());
				continue;
			}
			btn.setDeleted(0);
			btn.setActions("0");
			btn.setMenuid(menu.getId());
			if(btn.getId() == null){
				btn.setCreateBy(menu.getUpdateBy());
				sysMenuBtnService.add(btn);
			}else{
				sysMenuBtnService.update(btn);
			}
		}
		
	}
	
	/**
	 * 
	 * @param menu
	 * @throws Exception
	 */
	public void add(SysMenu menu) throws Exception {
		 super.add((T)menu);
		saveBtns(menu,menu.getBtns());
	}




	public void update(SysMenu menu) throws Exception {
		super.update((T)menu);
		saveBtns(menu,menu.getBtns());
	}




	/**
	 * 查询所有系统菜单列表
	 * @return
	 */
	public List<T> queryByAll(){
		return mapper.queryByAll();
	}
	
	/**
	 * 获取顶级菜单
	 * @return
	 */
	public List<T> getRootMenu(String menuId){
		Map<String, String> map = new HashMap<String, String>();
		map.put("menuId", menuId);
		return mapper.getRootMenu(map);
	}
	
	/**
	 * 获取子菜单
	 * @return
	 */
	public List<T> getChildMenu(String parentId){
		Map<String, String> map = new HashMap<String, String>();
		map.put("parentId", parentId);
		return mapper.getChildMenu(map);
	}
	
	/**
	 * 根据用户id查询父菜单
	 * @param roleId
	 * @return
	 */
	public List<T> getRootMenuByUser(String userId){
		Map<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		return getDao().getRootMenuByUser(map);
	}
	
	
	/**
	 * 根据用户id查询子菜单
	 * @param roleId
	 * @return
	 */
	public List<T> getChildMenuByUser(String userId){
		Map<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		return getDao().getChildMenuByUser(map);
	}
	
	
	/**
	 * 根据权限id查询菜单
	 * @param roleId
	 * @return
	 */
	public List<T> getMenuByRoleId(String roleId){
		Map<String, String> map = new HashMap<String, String>();
		map.put("roleId", roleId);
		return getDao().getMenuByRoleId(map);
	}
	
	
	
	@Override
	public void delete(String[] ids) throws Exception {
		super.delete(ids);
		//删除关联关系
		for(String id : ids){
			sysRoleRelService.deleteByObjId(id, RelType.MENU.key);
			sysMenuBtnService.deleteByMenuid(id);
		}
	}

	

	/**
	 * 获取表中最大rank
	 * @return
	 */
	public int maxRank() {
		return  getDao().maxRank();
	}
	/**
	 * 分页查询
	 * 
	 * @param pageQuery 查询条件
	 * @return 查询结果
	 */

	@SuppressWarnings("unchecked")
	public BasePage<Map<String, Object>> pagedQuery(SysMenuVo vo) {
	//	CustomerVo vo = new CustomerVo();
		List<SysMenu> list = (List<SysMenu>) mapper.queryByList(vo);
		//BasePage<CustomerVo> basepage = (BasePage<CustomerVo>)mapper.pagedQuery(page);
		//Map<String, String> map = Maps.newHashMap();
		List<Map<String, Object>> records = Lists.newArrayList();
		for(int i = 0; i < list.size(); i++) {
			SysMenu menu = list.get(i);
			records.add(SysMenuKit.toRecord(menu));
			//map.put(authPermissionVo.getId(), authPermissionVo.getName());
		}
		return new BasePage<Map<String, Object>>(vo.getStart(), vo.getLimit(), records, vo.getPager().getRowCount());
	}
	public SysMenuDao<T> getDao() {
		return mapper;
	}

}
