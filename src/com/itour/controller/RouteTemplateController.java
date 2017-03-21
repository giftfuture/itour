package com.itour.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.annotation.Auth;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.easyui.EasyUIGrid;
import com.itour.base.json.JsonUtils;
import com.itour.base.page.BasePage;
import com.itour.base.util.HtmlUtil;
import com.itour.base.util.IDGenerator;
import com.itour.base.util.SessionUtils;
import com.itour.base.web.BaseController;
import com.itour.entity.LogOperation;
import com.itour.entity.LogSetting;
import com.itour.entity.QuoteForm;
import com.itour.entity.RouteTemplate;
import com.itour.entity.SysUser;
import com.itour.service.LogOperationService;
import com.itour.service.LogSettingDetailService;
import com.itour.service.LogSettingService;
import com.itour.service.QuoteFormService;
import com.itour.service.RouteTemplateService;
import com.itour.vo.RouteTemplateVo;
 
/**
 * 
 * <br>
 * <b>功能：</b>RouteTemplateController<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */ 
@Controller
@RequestMapping("/routeTemplate") 
public class RouteTemplateController extends BaseController{
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	// Servrice start
	@Autowired //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private RouteTemplateService<RouteTemplate> routeTemplateService; 
	@Autowired
	private DataGridAdapter dataGridAdapter;
	@Autowired
	private QuoteFormService quoteFormService;
	@Autowired
	private LogSettingService logSettingService;
	
	@Autowired
	private LogSettingDetailService logSettingDetailService;
	
	@Autowired
	private LogOperationService logOperationService;
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@RequestMapping(value="/list") 
	public ModelAndView list(RouteTemplateVo page,HttpServletRequest request) throws Exception{
	/*	Map<String,Object>  context = getRootMap();
		List<RouteTemplate> dataList = routeTemplateService.queryByList(page);
		//设置页面数据
		context.put("dataList", dataList);*/
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行RouteTemplateController的list方法");
		return forward("server/sys/routeTemplate"); 
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
	public EasyUIGrid datalist(RouteTemplateVo vo,HttpServletRequest request,HttpServletResponse response) throws Exception{
		//List<RouteTemplate> dataList = routeTemplateService.queryByList(page);
		BasePage<RouteTemplateVo> page = routeTemplateService.pagedQuery(vo);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行RouteTemplateController的datalist方法");
		return dataGridAdapter.wrap(page);
	}
	
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@SuppressWarnings("unchecked")
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public void save(RouteTemplate entity,Integer[] typeIds,HttpServletRequest request,HttpServletResponse response) throws Exception{
		//Map<String,Object>  context = new HashMap<String,Object>();
		entity.setRouteCode(IDGenerator.code(16));
		RouteTemplate rt = null;
		String rtId = "";
		if(entity.getId()==null||StringUtils.isBlank(entity.getId().toString())){
			rtId = routeTemplateService.add(entity);
		}else{
			rt = routeTemplateService.queryById(entity.getId());
			if(rt == null)
				rtId = routeTemplateService.add(entity);
			else
				routeTemplateService.update(entity);
		}
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行RouteTemplateController的save方法");
		if(StringUtils.isNotEmpty(rtId)){			
			String logid = logSettingService.add(new LogSetting("route_template","路线模板","routeTemplate/save",sessionuser.getId(),"",""));
			logOperationService.add(new LogOperation(logid,"新增",rtId,JsonUtils.encode(entity),"","routeTemplate/save",sessionuser.getId()));
		}else{
			String logid = logSettingService.add(new LogSetting("route_template","路线模板","routeTemplate/save(update)",sessionuser.getId(),"",""));
			logOperationService.add(new LogOperation(logid,"更新",rt!= null?rt.getId():"",JsonUtils.encode(rt),JsonUtils.encode(entity),"routeTemplate/save(update)",sessionuser.getId()));
		}
		sendSuccessMessage(response, "保存成功~");
	}
	
	/**
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/getId", method = RequestMethod.POST)
	public String getId(String id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = getRootMap();
		RouteTemplate entity  = routeTemplateService.queryById(id);
		if(entity  == null){
			return sendFailureResult(response, "没有找到对应的记录!");
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行RouteTemplateController的getId方法");
		String logId = logSettingService.add(new LogSetting("route_template","路线模板","routeTemplate/getId",sessionuser.getId(),"",""));//String tableName,String function,String urlTeimplate,String creater,String deletescriptTemplate,String updatescriptTemplate
		logOperationService.add(new LogOperation(logId,"查看",entity.getId(),JsonUtils.encode(entity),"","routeTemplate/getId",sessionuser.getId()));//String logCode,String operationType,String primaryKeyvalue,String content,String url,String creater
		return JsonUtils.encode(context);
	}
	/**
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/quoteEdit",method = RequestMethod.GET)
	public ModelAndView quoteEdit(String id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object> context = getRootMap();
		RouteTemplateVo bean  = routeTemplateService.selectById(id);
		if(bean  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
		}
		//String quotoForm = entity.getQuotoForm();
		context.put(SUCCESS, true);
		//context.put("quotoForm", quotoForm);
		context.put("bean", bean);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行RouteTemplateController的quoteEdit方法");
		String logId = logSettingService.add(new LogSetting("route_template","路线模板","routeTemplate/quoteEdit",sessionuser.getId(),"",""));//String tableName,String function,String urlTeimplate,String creater,String deletescriptTemplate,String updatescriptTemplate
		logOperationService.add(new LogOperation(logId,"查看",bean.getId(),JsonUtils.encode(bean),"","routeTemplate/quoteEdit",sessionuser.getId()));//String logCode,String operationType,String primaryKeyvalue,String content,String url,String creater
		return forward("server/sys/quoteEdit",context);
	}
	/**
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/updateQuoteForm", method = RequestMethod.POST)
	public void updateQuoteForm(@RequestBody QuoteForm quoteForm,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			QuoteForm qf = quoteFormService.queryByRtId(quoteForm.getRouteTemplate());
			String qfId = "";
			SysUser user = SessionUtils.getUser(request);
			if(user != null){
				quoteForm.setUpdateBy(user.getId());
			}
			if(qf == null){		
				quoteForm.setCreateBy(user.getId());
				qfId = quoteFormService.add(quoteForm);
			}else{
				quoteForm.setId(qf.getId());
				quoteForm.setValid(true);
				quoteFormService.update(quoteForm);				
			}
			SysUser sessionuser = SessionUtils.getUser(request);
			logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行RouteTemplateController的updateQuoteForm方法");
			if(StringUtils.isNotEmpty(qfId)){			
				String logid = logSettingService.add(new LogSetting("route_template","路线模板","routeTemplate/updateQuoteForm",sessionuser.getId(),"",""));
				logOperationService.add(new LogOperation(logid,"新增",qfId,JsonUtils.encode(quoteForm),"","routeTemplate/updateQuoteForm",sessionuser.getId()));
				sendSuccessMessage(response, "详细价目表内容添加成功!");
			}else{
				String logid = logSettingService.add(new LogSetting("route_template","路线模板","routeTemplate/updateQuoteForm(update)",sessionuser.getId(),"",""));
				logOperationService.add(new LogOperation(logid,"更新",qf!= null?qf.getId():"",JsonUtils.encode(qf),JsonUtils.encode(quoteForm),"routeTemplate/updateQuoteForm(update)",sessionuser.getId()));
				sendSuccessMessage(response, "详细价目表内容更新成功!");
			}
		} catch (Exception e) {
			sendFailureMessage(response, "详细价目表内容更新出错!");
			e.printStackTrace();
		}
	}
	/**
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public String delete(String[] id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		routeTemplateService.delete(id);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行RouteTemplateController的delete方法");
		String logId = logSettingService.add(new LogSetting("route_template","路线模板","routeTemplate/delete",sessionuser.getId(),"delete from route_template where id in("+JsonUtils.encode(id)+")",""));//String tableName,String function,String urlTeimplate,String creater,String deletescriptTemplate,String updatescriptTemplate
		logOperationService.add(new LogOperation(logId,"物理删除",JsonUtils.encode(id),JsonUtils.encode(id),JsonUtils.encode(id),"routeTemplate/delete",sessionuser.getId()));//String logCode,String operationType,String primaryKeyvalue,String content,String url,String creater
		return removeSuccessMessage(response);
	}
	/**
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/logicdelete", method = RequestMethod.POST)
	public String logicdelete(String[] id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		routeTemplateService.logicdelete(id);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行RouteTemplateController的logicdelete方法");
		String logId = logSettingService.add(new LogSetting("route_template","路线模板","routeTemplate/logicdelete",sessionuser.getId(),"update route_template set is_valid=0 where id in("+JsonUtils.encode(id)+")",""));//String tableName,String function,String urlTeimplate,String creater,String deletescriptTemplate,String updatescriptTemplate
		logOperationService.add(new LogOperation(logId,"逻辑删除",JsonUtils.encode(id),JsonUtils.encode(id),JsonUtils.encode(id),"routeTemplate/logicdelete",sessionuser.getId()));//String logCode,String operationType,String primaryKeyvalue,String content,String url,String creater
		return removeSuccessMessage(response);
	}
	/**
	 * 
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=false,verifyURL=false)
	@ResponseBody
	@RequestMapping(value="/loadRoutes", method = RequestMethod.POST)
	public void loadRoutes(HttpServletResponse response) throws Exception{
		RouteTemplateVo vo = new RouteTemplateVo();
		List<RouteTemplate> list = routeTemplateService.queryByList(vo);
		HtmlUtil.writerJson(response, list);
	}

	
}
