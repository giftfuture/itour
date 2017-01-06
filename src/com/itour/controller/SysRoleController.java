package com.itour.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.annotation.Auth;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.easyui.EasyUIGrid;
import com.itour.base.page.BasePage;
import com.itour.base.util.HtmlUtil;
import com.itour.base.web.BaseController;
import com.itour.entity.SysMenu;
import com.itour.entity.SysRole;
import com.itour.entity.SysRoleRel;
import com.itour.entity.SysRoleRel.RelType;
import com.itour.service.SysMenuService;
import com.itour.service.SysRoleRelService;
import com.itour.service.SysRoleService;
import com.itour.vo.SysRoleVo;
 
@Controller
@RequestMapping("/sysRole") 
public class SysRoleController extends BaseController{
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	
	// Servrice start
	@Autowired 
	private SysRoleService<SysRole> sysRoleService; 
	
	// Servrice start
	@Autowired
	private SysMenuService<SysMenu> sysMenuService; 
	@Autowired
	private SysRoleRelService<SysRoleRel> sysRoleRelService;
	@Autowired
	private DataGridAdapter dataGridAdapter;
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@RequestMapping(value="/role")
	public ModelAndView list(SysRoleVo model,HttpServletRequest request) throws Exception{
		return forward("server/sys/sysRole"); 
	}
	
	
	/**
	 * @param url
	 * @param classifyId
	 * @return 
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/dataList.json", method = RequestMethod.POST) 
	public EasyUIGrid datalist(SysRoleVo vo,HttpServletResponse response) throws Exception{
		BasePage<SysRoleVo> pagination = sysRoleService.pagedQuery(vo);
		return dataGridAdapter.wrap(pagination); 
	}
	
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public void save(SysRole bean,String[] menuIds,String[] btnIds,HttpServletResponse response) throws Exception{
		if(bean.getId() == null){
			sysRoleService.add(bean,menuIds,btnIds);
		}else{
			SysRole sr = sysRoleService.queryById(bean.getId());
			if(sr == null)
				sysRoleService.add(bean,menuIds,btnIds);
			else
				sysRoleService.update(bean,menuIds,btnIds);
		}
		sendSuccessMessage(response, "保存成功~");
	}
	/**
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/getId", method = RequestMethod.POST)
	public Map<String,Object> getId(String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap<String,Object> ();
		SysRole bean  = sysRoleService.queryById(id);
		if(bean  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return new HashMap<String,Object>();
		}
		//获取权限关联的菜单
		String[] menuIds = null;
		List<SysMenu> menuList =  sysMenuService.getMenuByRoleId(id);
		if(menuList != null){
			menuIds = new String[menuList.size()];
			int i = 0;
			for(SysMenu item : menuList){
				menuIds[i] = item.getId();
				i++;
			}
		}
		//获取权限下关联的按钮
		String[] btnIds = null;
		List<SysRoleRel>  btnList =sysRoleRelService.queryByRoleId(id, RelType.BTN.key);
		if(btnList != null){
			btnIds = new String[btnList.size()];
			int i = 0;
			for(SysRoleRel item : btnList){
				btnIds[i] = item.getObjId();
				i++;
			}
		}
		//将对象转成Map
		Map<String,Object> data = BeanUtils.describe(bean);
		data.put("menuIds", menuIds);
		data.put("btnIds", btnIds);
		context.put(SUCCESS, true);
		context.put("data", data);
		return context;
	}
	
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		sysRoleService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}
	
	/**
	 * 
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/loadRoleList", method = RequestMethod.POST)
	public void loadRoleList(HttpServletResponse response) throws Exception{
		List<SysRole>  roloList = sysRoleService.queryAllList();
		HtmlUtil.writerJson(response, roloList);
	}


	
	
}
