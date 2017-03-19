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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;
import com.itour.base.annotation.Auth;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.easyui.EasyUIGrid;
import com.itour.base.json.JsonUtils;
import com.itour.base.page.BasePage;
import com.itour.base.util.HtmlUtil;
import com.itour.base.util.SessionUtils;
import com.itour.base.web.BaseController;
import com.itour.entity.LogOperation;
import com.itour.entity.LogSetting;
import com.itour.entity.SysUser;
import com.itour.entity.SysVariables;
import com.itour.entity.TravelStyle;
import com.itour.service.LogOperationService;
import com.itour.service.LogSettingDetailService;
import com.itour.service.LogSettingService;
import com.itour.service.TravelStyleService;
import com.itour.vo.TravelStyleVo;
 
/**
 * 
 * <br>
 * <b>功能：</b>TravelStyleController<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */ 
@Controller
@RequestMapping("/travelStyle") 
public class TravelStyleController extends BaseController{
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	
	// Servrice start
	@Autowired //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private TravelStyleService<TravelStyle> travelStyleService; 
	@Autowired
	private DataGridAdapter dataGridAdapter;
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
	public ModelAndView list(TravelStyleVo page,HttpServletRequest request) throws Exception{
		 Map<String,Object>  context = getRootMap();
		//context.put("dataList", dataList);//设置页面数据
			SysUser sessionuser = SessionUtils.getUser(request);
			logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelStyleController的list方法");
		 return forward("server/sys/travelStyle",context); 
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
	public EasyUIGrid datalist(TravelStyleVo vo,HttpServletRequest request,HttpServletResponse response) throws Exception{
		BasePage<TravelStyleVo> pagination = travelStyleService.pagedQuery(vo);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelStyleController的dataList方法");
		return dataGridAdapter.wrap(pagination); 
	}
	/**
	 * 
	 * @param response
	 * @return 
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/allData", method = RequestMethod.POST) 
	public void allData(HttpServletRequest request,HttpServletResponse response)throws Exception{
		List<TravelStyle> dataList = travelStyleService.queryByList(null);
		Map<String,Object> jsonMap = new HashMap<String,Object>();
		jsonMap.put("rows", dataList);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelStyleController的allData方法");
		HtmlUtil.writerJson(response, jsonMap);
	}
	/**
	 * -所有-
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=false,verifyURL=false)
	@ResponseBody
	@RequestMapping(value="/loadStyles", method = RequestMethod.GET) 
	public List<Map<String,String>> loadStyles(HttpServletRequest request,HttpServletResponse response)throws Exception{
		List<HashMap<String,String>> list = travelStyleService.loadStyles();
		List<Map<String,String>> newlist = Lists.newArrayList();
		newlist.add(new HashMap(){{put("alias","");put("type","-所有-");}});
		newlist.addAll(list);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelStyleController的loadStyles方法");
		return newlist;
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
	public void save(TravelStyle entity,Integer[] typeIds,HttpServletRequest request,HttpServletResponse response) throws Exception{
	//	Map<String,Object>  context = new HashMap<String,Object>();
		entity.setValid(true);
		String id = "";
		TravelStyle ts = null;
		if(entity.getId()==null||StringUtils.isBlank(entity.getId().toString())){
			id = travelStyleService.add(entity);
		}else{
				ts = travelStyleService.queryById(entity.getId());
			if(ts == null)
				id = travelStyleService.add(entity);
			else
				travelStyleService.update(entity);
		}
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelStyleController的save方法");
		if(StringUtils.isNotEmpty(id)){			
			String logid = logSettingService.add(new LogSetting("travel_style","旅行方式管理","travelStyle/save",sessionuser.getId(),"",""));
			logOperationService.add(new LogOperation(logid,"新增",id,JsonUtils.encode(entity),"","travelStyle/save",sessionuser.getId()));
		}else{
			String logid = logSettingService.add(new LogSetting("travel_style","旅行方式管理","travelStyle/save(update)",sessionuser.getId(),"",""));
			logOperationService.add(new LogOperation(logid,"更新",ts!= null?ts.getId():"",JsonUtils.encode(ts),JsonUtils.encode(entity),"travelStyle/save(update)",sessionuser.getId()));
		}
		sendSuccessMessage(response, "保存成功~");
	}
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/getId")
	public Map<String,Object> getId(String id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = getRootMap();
		TravelStyle entity  = travelStyleService.queryById(id);
		if(entity  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return getRootMap();
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelStyleController的getId方法");
		String logId = logSettingService.add(new LogSetting("travel_style","旅行方式管理","travelStyle/getId",sessionuser.getId(),"",""));//String tableName,String function,String urlTeimplate,String creater,String deletescriptTemplate,String updatescriptTemplate
		logOperationService.add(new LogOperation(logId,"查看",entity.getId(),JsonUtils.encode(entity),"","travelStyle/getId",sessionuser.getId()));//String logCode,String operationType,String primaryKeyvalue,String content,String url,String creater
		return context;
	}
	
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/delete")
	public void delete(String[] id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		travelStyleService.delete(id);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelStyleController的delete方法");
		String logId = logSettingService.add(new LogSetting("travel_style","旅行方式管理","travelStyle/delete",sessionuser.getId(),"delete from travel_style where id in("+JsonUtils.encode(id)+")",""));//String tableName,String function,String urlTeimplate,String creater,String deletescriptTemplate,String updatescriptTemplate
		logOperationService.add(new LogOperation(logId,"物理删除",JsonUtils.encode(id),JsonUtils.encode(id),JsonUtils.encode(id),"travelStyle/delete",sessionuser.getId()));//String logCode,String operationType,String primaryKeyvalue,String content,String url,String creater
		sendSuccessMessage(response, "删除成功");
	}
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/logicdelete")
	public void logicdelete(String[] id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		travelStyleService.logicdelete(id);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelStyleController的logicdelete方法");
		String logId = logSettingService.add(new LogSetting("travel_style","旅行方式管理","travelStyle/logicdelete",sessionuser.getId(),"update travel_style set is_valid=0 where id in("+JsonUtils.encode(id)+")",""));//String tableName,String function,String urlTeimplate,String creater,String deletescriptTemplate,String updatescriptTemplate
		logOperationService.add(new LogOperation(logId,"逻辑删除",JsonUtils.encode(id),JsonUtils.encode(id),JsonUtils.encode(id),"travelStyle/logicdelete",sessionuser.getId()));//String logCode,String operationType,String primaryKeyvalue,String content,String url,String creater
		sendSuccessMessage(response, "删除成功");
	}
}
