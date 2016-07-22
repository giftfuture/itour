package com.itour.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.entity.BaseEntity.DELETED;
import com.itour.base.entity.BaseEntity.STATE;
import com.itour.base.util.HtmlUtil;
import com.itour.base.util.MethodUtil;
import com.itour.base.util.SessionUtils;
import com.itour.base.web.BaseController;
import com.itour.entity.SysRole;
import com.itour.entity.SysRoleRel;
import com.itour.entity.SysUser;
import com.itour.exception.ServiceException;
import com.itour.page.SysUserModel;
import com.itour.service.SysRoleService;
import com.itour.service.SysUserService;
 
@Controller
@RequestMapping("/sysUser") 
public class SysUserController extends BaseController{
	
	private final static Logger log= Logger.getLogger(SysUserController.class);
	
	// Servrice start
	@Autowired(required=false) //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private SysUserService<SysUser> sysUserService; 
	
	// Servrice start
	@Autowired(required=false) 
	private SysRoleService<SysRole> sysRoleService; 
	/**
	 * ilook 首页
	 * @param url
	 * @param classifyId
	 * @return
	 */
	@RequestMapping("/list") 
	public ModelAndView list(SysUserModel model,HttpServletRequest request) throws Exception{
	/*	Map<String,Object>  context = getRootMap();
		List<SysUser> dataList = sysUserService.queryByList(model);
		//设置页面数据
		context.put("dataList", dataList);*/
		return forword("server/sys/sysUser"); 
	}
	
	
	/**
	 * json 列表页面
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/dataList") 
	public void  dataList(SysUserModel model,HttpServletResponse response) throws Exception{
		List<SysUser> dataList = sysUserService.queryByList(model);
		for(SysUser user: dataList){
			List<SysRole> list = sysRoleService.queryByUserid(user.getId());
			user.setRoleStr(rolesToStr(list));
		}
		//设置页面数据
		Map<String,Object> jsonMap = new HashMap<String,Object>();
		jsonMap.put("total",model.getPager().getRowCount());
		jsonMap.put("rows", dataList);
		HtmlUtil.writerJson(response, jsonMap);
	}
	
	/**
	 * 角色列表转成字符串
	 * @param list
	 * @return
	 */
	private String rolesToStr(List<SysRole> list){
		if(list == null || list.isEmpty()){
			return null;
		}
		StringBuffer str = new StringBuffer();
		for(int i=0;i<list.size();i++){
			SysRole role = list.get(i);
			str.append(role.getRoleName());
			if((i+1) < list.size()){
				str.append(",");
			}
		}
		return str.toString();
	}
	
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/save")
	public void save(SysUser bean,HttpServletRequest request,HttpServletResponse response) throws Exception{
		//Map<String,Object>  context = new HashMap<String,Object>();
		SysUser user = SessionUtils.getUser(request);
		int count = sysUserService.getUserCountByEmail(bean.getEmail());
		if(bean.getId() == null){
			if(count > 0){
				throw new ServiceException("用户已存在.");
			}
			bean.setDeleted(DELETED.NO.key);
			if(user != null){
				bean.setCreateBy(user.getId());
				bean.setUpdateBy(user.getId());
			}
			sysUserService.add(bean);
		}else{
			if(count > 1){
				throw new ServiceException("用户已存在.");
			}
			if(user != null){
				bean.setUpdateBy(user.getId());
			}
			sysUserService.update(bean);
		}
		sendSuccessMessage(response, "保存成功~");
	}
	
	@RequestMapping("/getId")
	public void getId(String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = getRootMap();
		SysUser bean  = sysUserService.queryById(id);
		if(bean  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return;
		}
		context.put(SUCCESS, true);
		context.put("data", bean);
		HtmlUtil.writerJson(response, context);
	}
	
	@RequestMapping("/delete")
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		sysUserService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}
	
	
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/updatePwd")
	public void updatePwd(String id,String oldPwd,String newPwd,HttpServletRequest request,HttpServletResponse response) throws Exception{
	//	boolean isAdmin = SessionUtils.isAdmin(request); //是否超级管理员
		SysUser bean  = sysUserService.queryById(id);
		if(bean.getId() == null || DELETED.YES.key == bean.getDeleted()){
			sendFailureMessage(response, "抱歉,用户不存在或已被删除.");
			return;
		}
		if(StringUtils.isBlank(newPwd) || newPwd.length()<6){
			sendFailureMessage(response, "新密码不能为空且长度不小于六位.");
			return;
		}
		//不是超级管理员，匹配旧密码
		if(/*!isAdmin && */!MethodUtil.compareSHA(oldPwd,bean.getPwd())){
			sendFailureMessage(response, "旧密码输入错误");
			return;
		}
 		bean.setPwd(MethodUtil.encryptSHA(newPwd));
		sysUserService.update(bean);
		sendSuccessMessage(response, "密码更新成功");
	
	}
	

	
	/**
	 * 用户授权页面
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/userRole") 
	public ModelAndView  userRole(HttpServletRequest request) throws Exception{
		Map<String,Object>  context = getRootMap();
		return forword("server/sys/sysUserRole", context);
	}
	
	/**
	 * 用户授权列表
	 * @param model
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/userList") 
	public void  userList(SysUserModel model,HttpServletResponse response) throws Exception{
		model.setState(STATE.ENABLE.key);
		dataList(model, response);
	}

	/**
	 * 查询用户信息
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/getUser") 
	public void getUser(String id,HttpServletResponse response)  throws Exception{
		Map<String,Object>  context = getRootMap();
		SysUser bean  = sysUserService.queryById(id);
		if(bean  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return;
		}
		String[] roleIds = null;
		List<SysRoleRel>  roles  =sysUserService.getUserRole(bean.getId());
		if(roles != null){
			roleIds = new String[roles.size()];
			int i = 0;
			for(SysRoleRel rel : roles ){
				roleIds[i] = rel.getRoleId();
				i++;
			}
		}
		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("id", bean.getId());
		data.put("email", bean.getEmail());
		data.put("roleIds", roleIds);
		context.put("data", data);
		context.put(SUCCESS, true);
		HtmlUtil.writerJson(response, context);
		
	}
	
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/addUserRole")
	public void addUserRole(String id,String roleIds[],HttpServletResponse response) throws Exception{
		sysUserService.addUserRole(id, roleIds);
		sendSuccessMessage(response, "保存成功");
	}
}
