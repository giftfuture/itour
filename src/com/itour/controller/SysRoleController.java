package com.itour.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.annotation.Auth;
import com.itour.base.collect.Mapxs;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.easyui.EasyUIGrid;
import com.itour.base.page.BasePage;
import com.itour.base.util.HtmlUtil;
import com.itour.base.util.SessionUtils;
import com.itour.base.web.BaseController;
import com.itour.entity.SysMenu;
import com.itour.entity.SysRole;
import com.itour.entity.SysRoleRel;
import com.itour.entity.SysRoleRel.RelType;
import com.itour.entity.SysUser;
import com.itour.service.SysMenuService;
import com.itour.service.SysRoleRelService;
import com.itour.service.SysRoleService;
import com.itour.vo.SysRoleVo;
 
@Controller
@RequestMapping("/sysRole") 
public class SysRoleController extends BaseController{
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	@Autowired 
	private SysRoleService<SysRole> sysRoleService; 
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
	public ModelAndView role(SysRoleVo model,HttpServletRequest request) throws Exception{
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行SysRoleController的role方法");
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
	public EasyUIGrid datalist(SysRoleVo vo,HttpServletRequest request,HttpServletResponse response) throws Exception{
		//response.setContentType("application/json; charset=UTF-8");
		BasePage<SysRoleVo> pagination = sysRoleService.pagedQuery(vo);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行SysRoleController的dataList方法");
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
	public Object save(SysRole bean,String[] menuIds,String[] btnIds,HttpServletRequest request,HttpServletResponse response) throws Exception{
		if(StringUtils.isNotEmpty(bean.getId())){
			sysRoleService.add(bean,menuIds,btnIds);
		}else{
			SysRole sr = sysRoleService.queryById(bean.getId());
			if(sr == null)
				sysRoleService.add(bean,menuIds,btnIds);
			else
				sysRoleService.update(bean,menuIds,btnIds);
		}
		Map<String,Object> result = Mapxs.newMapx();
		//sendSuccessMessage(response, "保存成功~");
		result.put(SUCCESS, true);
		result.put(MSG, "角色添加成功！");
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行SysRoleController的save方法");
		return result;
	}
	/**
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/getId", method = RequestMethod.POST)
	public Map<String,Object> getId(String id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object> context = getRootMap();
		SysRole bean  = sysRoleService.queryById(id);
		if(bean  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return getRootMap();
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
		context.put("data", data);
		context.put(SUCCESS, true);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行SysRoleController的getId方法");
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
	public void delete(String[] id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		sysRoleService.delete(id);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行SysRoleController的delete方法");
		sendSuccessMessage(response, "删除成功");
	}
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/logicdelete", method = RequestMethod.POST)
	public void logicdelete(String[] id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		sysRoleService.logicdelete(id);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行SysRoleController的logicdelete方法");
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
	public void loadRoleList(HttpServletRequest request,HttpServletResponse response) throws Exception{
		List<SysRole>  roloList = sysRoleService.queryAllList();
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行SysRoleController的loadRoleList方法");
		HtmlUtil.writerJson(response, roloList);
	}


	
	
}
