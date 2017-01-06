package com.itour.controller;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.entity.TreeNode;
import com.itour.base.entity.BaseEntity.DELETED;
import com.itour.base.entity.BaseEntity.STATE;
import com.itour.base.util.DateUtil;
import com.itour.base.util.HtmlUtil;
import com.itour.base.util.MethodUtil;
import com.itour.base.util.SHA;
import com.itour.base.util.SessionUtils;
import com.itour.base.util.TreeUtil;
import com.itour.base.util.URLUtils;
import com.itour.base.util.RoleConstant.SuperAdmin;
import com.itour.base.web.BaseController;
import com.itour.entity.SysMenu;
import com.itour.entity.SysMenuBtn;
import com.itour.entity.SysUser;
import com.itour.vo.SysUserVo;
import com.itour.service.SysMenuBtnService;
import com.itour.service.SysMenuService;
import com.itour.service.SysUserService;

@Controller
@RequestMapping("/main")
public class MainController extends BaseController {

	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	private String message = null;
	// Servrice start
	@Autowired
	private SysMenuService<SysMenu> sysMenuService; 
	
	@Autowired 
	private SysUserService<SysUser> sysUserService; 
	
	@Autowired
	private SysMenuBtnService<SysMenuBtn> sysMenuBtnService;
	
	@Autowired
	private DataGridAdapter dataGridAdapter;
	
	private String verifyCode;
	/**
	 * 登录页面
	 * @param url
	 * @param classifyId
	 * @return
	 */
	@ResponseBody
	@Auth(verifyLogin=false,verifyURL=false)
	@RequestMapping(value="/login")
	public ModelAndView login(HttpServletRequest request,HttpServletResponse response,Map<String,Object>  context) throws Exception{
		return forward("/server/login");
	}
	/**
	 * 检查用户名称
	 * 
	 * @param user
	 * @param req
	 * @return
	 * @throws Exception 
	 */
	@ResponseBody
	@Auth(verifyLogin=false,verifyURL=false)
	@RequestMapping(value="/checkuser", method = RequestMethod.POST)
	public void checkuser(SysUserVo user, HttpServletRequest req,HttpServletResponse response) throws Exception {
		int count = sysUserService.getUserCountByEmail(user.getEmail());
		if (count >= 1) {
				//设置User到Session
				//SessionUtils.setUser(req,u);
				//记录成功登录日志
				//log.debug(message);
				message = "1";
				sendSuccessMessage(response,message);
				//-------------------------------------------------------
		} else {
			sendFailureMessage(response, "用户名或密码错误!");
		}
	}
	
	/**
	 * 登录
	 * @param email 邮箱登录账号
	 * @param pwd 密码
	 * @param verifyCode 验证码
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@ResponseBody
	@Auth(verifyLogin=false,verifyURL=false)
	@RequestMapping(value="/logIn", method = RequestMethod.POST)
	public void toLogin(String email,String pwd,String verifyCode,HttpServletRequest request,HttpServletResponse response) throws Exception{
	/*	Map<String,Object> context = getRootMap();
		SysUser u = SessionUtils.getUser(request);
		if(u !=null){
			SysUser bean  = sysUserService.queryLogin(u.getEmail(), u.getPwd());
			if(bean != null && bean.getId() == null || DELETED.NO.key == bean.getDeleted()){
				//return new ModelAndView("redirect:/main/manage");
				//message =  "用户: " + bean.getNickName() +"["+bean.getEmail()+"]"+"登录成功";
				sendSuccessMessage(response, "");
				return;
			}
		}*/
		String vcode  = SessionUtils.getValidateCode(request);
		SessionUtils.removeValidateCode(request);//清除验证码，确保验证码只能用一次
	 	if(StringUtils.isBlank(verifyCode)){
			sendFailureMessage(response, "验证码不能为空.");
			return;
		}
		//判断验证码是否正确
	 	if(!verifyCode.toLowerCase().equals(vcode)){
	 	//if(!verifyCode.toLowerCase().equals(vcode) || verifyCode.toLowerCase() != vcode){
			sendFailureMessage(response, "验证码输入错误.");
			return;
		} 
		//email="admin@qq.com";
		//pwd="admin";
		if(StringUtils.isBlank(email)){
			sendFailureMessage(response, "账号不能为空.");
			return;
		}
		if(StringUtils.isBlank(pwd)){
			sendFailureMessage(response, "密码不能为空.");
			return;
		}
		 String msg = "用户登录日志:";
		 SysUser user = sysUserService.queryLogin(email,MethodUtil.encryptSHA(pwd));
		if(user == null){//记录错误登录日志
			logger.debug(msg+"["+email+"]"+"账号或者密码输入错误.");
			sendFailureMessage(response, "账号或者密码输入错误.");
			return;
		}
		if(STATE.DISABLE.key == user.getState()){
			sendFailureMessage(response, "账号已被禁用.");
			return;
		}
		//登录次数加1 修改登录时间
		int loginCount = 0;
		if(user.getLoginCount() != null){
			loginCount = user.getLoginCount();
		}
		user.setLoginCount(loginCount+1);
		user.setLoginTime(DateUtil.getDateByString(""));
		sysUserService.update(user);
		//设置User到Session
		SessionUtils.setUser(request,user);
		
		//记录成功登录日志
		message =  "用户: " + user.getNickName() +"["+email+"]"+"登录成功";
		logger.debug(message);
		//return forword("/main/main",context);
		sendSuccessMessage(response, message);
		//return new ModelAndView("redirect:/main/manage","map",context);
	}
	
	/**
	 * 退出登录
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@ResponseBody
	@Auth(verifyLogin=true,verifyURL=false)
	@RequestMapping(value="/logout", method = RequestMethod.POST)
	public void  logout(HttpServletRequest request,HttpServletResponse response) throws Exception{
		SessionUtils.removeUser(request);
		response.sendRedirect("login");
	}
	
	/**
	 * 获取Action下的按钮
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@ResponseBody
	@Auth(verifyLogin=true,verifyURL=true)
	@RequestMapping(value="/getActionBtn", method = RequestMethod.POST)
	public Map<String,Object>  getActionBtn(String url,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String, Object> result = new HashMap<String, Object>();
		List<String> actionTypes = new ArrayList<String>();
		//判断是否超级管理员
		if(SessionUtils.isAdmin(request)){
			result.put("allType", true);
		}else{
			String menuUrl = URLUtils.getReqUri(url);
			menuUrl = StringUtils.remove(menuUrl,request.getContextPath());
			//获取权限按钮
			actionTypes = SessionUtils.getMemuBtnListVal(request, StringUtils.trim(menuUrl));
			result.put("allType", false);
			result.put("types", actionTypes);
		}
		result.put(SUCCESS, true);
		return result;
	}
	 
	
	/**
	 * 修改密码
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@ResponseBody
	@Auth(verifyLogin=true,verifyURL=false)
	@RequestMapping(value="/modifyPwd", method = RequestMethod.POST)
	public void modifyPwd(String oldPwd,String newPwd,HttpServletRequest request,HttpServletResponse response) throws Exception{
		SysUser user = SessionUtils.getUser(request);
		if(user == null){
			sendFailureMessage(response, "对不起,登录超时.");
			return;// return new ModelAndView("redirect:/main/login");; 
		}
		SysUser bean  = sysUserService.queryById(user.getId());
		if(bean.getId() == null || DELETED.YES.key == bean.getDeleted()){
			sendFailureMessage(response, "对不起,用户不存在或已被删除.");
			return;
		}
		if(StringUtils.isBlank(newPwd) || newPwd.length()<6){
			sendFailureMessage(response, "密码不能为空且长度不小于六位.");
			return;
		}

		//不是超级管理员，匹配旧密码
		if(!MethodUtil.compareSHA(oldPwd,bean.getPwd())){
			sendFailureMessage(response, "旧密码输入不匹配.");
			return;
		}
		bean.setPwd(MethodUtil.encryptSHA(newPwd));
		sysUserService.update(bean);
		sendSuccessMessage(response, "密码更新成功");
	}
	
	/**
	 * 登录后首页
	 * @param url
	 * @param classifyId
	 * @return
	 */
	@ResponseBody
	@Auth(verifyLogin=true,verifyURL=false)
	@RequestMapping(value="/manage") 
	public ModelAndView main(HttpServletRequest request,HttpServletResponse response,Map<String,Object> context){
		SysUser user = SessionUtils.getUser(request);
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 
		if(user == null){
			//sendFailureMessage(response, "对不起,登录超时,请重新登录.");
			//response.sendRedirect("login");
			return new ModelAndView("redirect:/main/login");
		}
		//Map<String,Object>  context = getRootMap();
		List<SysMenu> rootMenus = null;
		List<SysMenu> childMenus = null;
		List<SysMenuBtn> childBtns = null;
		if(user != null){
			//超级管理员
			if(SuperAdmin.YES.key ==  user.getSuperAdmin()){
				rootMenus = sysMenuService.getRootMenu(null);// 查询所有根节点
				childMenus = sysMenuService.getChildMenu(null);//查询所有子节点
				childBtns = sysMenuBtnService.queryByAll();//查询所有按钮
			}else{
				rootMenus = sysMenuService.getRootMenuByUser(user.getId() );//根节点
				childMenus = sysMenuService.getChildMenuByUser(user.getId());//子节点
				childBtns = sysMenuBtnService.getMenuBtnByUser(user.getId());//按钮操作
			}
			buildData(childMenus,childBtns,request); //构建必要的数据
			List<TreeNode> menuList = treeMenu(rootMenus,childMenus);
			//TreeUtil treeutil = new TreeUtil(rootMenus,childMenus,childBtns);
		//	List<String> accessUrls = TreeUtil.nodeUrls(treeutil);
			context.put("user", user);
			context.put("menuList", menuList);
			//SessionUtils.setAccessUrl(request, accessUrls);
		}
		return forward("server/main/main",context); 
	}
	
	
	/**
	 * 构建树形数据
	 * @return
	 */
	private List<TreeNode> treeMenu(List<SysMenu> rootMenus,List<SysMenu> childMenus){
		TreeUtil util = new TreeUtil(rootMenus,childMenus);
		return util.getTreeNode();
	}
	
	
	/**
	 * 构建树形数据
	 * @return
	 */
	private void buildData(List<SysMenu> childMenus,List<SysMenuBtn> childBtns,HttpServletRequest request){
		//能够访问的url列表
		List<String> accessUrls  = new ArrayList<String>();
		//菜单对应的按钮
		Map<String,List<String>> menuBtnMap = new HashMap<String,List<String>>(); 
		for(SysMenu menu: childMenus){
			//判断URL是否为空
			if(StringUtils.isNotBlank(menu.getUrl())){
				List<String> btnTypes = new ArrayList<String>();
				for(SysMenuBtn btn  : childBtns){
					if(menu.getId().equals(btn.getMenuid())){
						btnTypes.add(btn.getBtnType());
						URLUtils.getBtnAccessUrls(menu.getUrl(), btn.getActionUrls(),accessUrls);
					}
				}
				menuBtnMap.put(menu.getUrl(), btnTypes);
				URLUtils.getBtnAccessUrls(menu.getUrl(), menu.getActions(),accessUrls);
				accessUrls.add(menu.getUrl());
			}
		}
		SessionUtils.setAccessUrl(request, accessUrls);//设置可访问的URL
		SessionUtils.setMemuBtnMap(request, menuBtnMap); //设置可用的按钮
	}


	public String getVerifyCode() {
		return verifyCode;
	}


	public void setVerifyCode(String verifyCode) {
		this.verifyCode = verifyCode;
	}
	
}
