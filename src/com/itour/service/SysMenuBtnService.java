package com.itour.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itour.base.dao.BaseDao;
import com.itour.base.service.BaseService;
import com.itour.dao.SysMenuBtnDao;

/**
 * 
 * <br>
 * <b>功能：</b>SysMenuBtnService<br>
 * <b>作者：</b>fred<br>@Autowired
 * <b>日期：</b> Jun 9, 2016 <br>
 */
@Service("sysMenuBtnService")
public class SysMenuBtnService<SysMenuBtn> extends BaseService<SysMenuBtn> {
	private final static Logger log= Logger.getLogger(SysMenuBtnService.class);
	
	public List<SysMenuBtn> queryByAll(){
		return getDao().queryByAll();
	}
	
	
	
	public List<SysMenuBtn> queryByMenuid(Integer menuid){
		return getDao().queryByMenuid(menuid);
	}
	
	public List<SysMenuBtn> queryByMenuUrl(String url){
		return getDao().queryByMenuUrl(url);
	}
	
	public void deleteByMenuid(Integer menuid){
		getDao().deleteByMenuid(menuid);
	}
	
	public List<SysMenuBtn> getMenuBtnByUser(Integer userid){
		return getDao().getMenuBtnByUser(userid);
	}

	@Autowired
    private SysMenuBtnDao<SysMenuBtn> mapper;

		
	public SysMenuBtnDao<SysMenuBtn> getDao() {
		return mapper;
	}

}
