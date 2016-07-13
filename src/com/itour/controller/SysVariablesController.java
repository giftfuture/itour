package com.itour.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.web.BaseController;
import com.itour.base.util.HtmlUtil;
import com.itour.base.entity.BaseEntity.DELETED;
import com.itour.entity.RouteTemplate;
import com.itour.entity.SysVariables;
import com.itour.page.SysVariablesPage;
import com.itour.service.SysVariablesService;
 
/**
 * 
 * <br>
 * <b>功能：</b>SysVariablesController<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */ 
@Controller
@RequestMapping("/sysVariables") 
public class SysVariablesController extends BaseController{
	
	private final static Logger log= Logger.getLogger(SysVariablesController.class);
	
	// Servrice start
	@Autowired(required=false) //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private SysVariablesService<SysVariables> sysVariablesService; 
	
	
	
	
	
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/list") 
	public ModelAndView  list(SysVariablesPage page,HttpServletRequest request) throws Exception{
		Map<String,Object>  context = getRootMap();
		List<SysVariables> dataList = sysVariablesService.queryByList(page);
		context.put("dataList", dataList);//设置页面数据
		return forword("server/sys/sysVariables",context); 
	}
	
	
	/**
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/dataList") 
	public void  datalist(SysVariablesPage page,HttpServletResponse response) throws Exception{
		List<SysVariables> dataList = sysVariablesService.queryByList(page);
		//设置页面数据
		Map<String,Object> jsonMap = new HashMap<String,Object>();
		jsonMap.put("total",page.getPager().getRowCount());
		jsonMap.put("rows", dataList);
		HtmlUtil.writerJson(response, jsonMap);
	}
	
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/save")
	public void save(SysVariables entity,Integer[] typeIds,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap<String,Object>();
		if(entity.getId()==null||StringUtils.isBlank(entity.getId().toString())){
			sysVariablesService.add(entity);
		}else{
			SysVariables sv = sysVariablesService.queryById(entity.getId());
			if(sv == null)
				sysVariablesService.add(entity);
			else
				sysVariablesService.update(entity);
		}
		sendSuccessMessage(response, "保存成功~");
	}
	
	
	@RequestMapping("/getId")
	public void getId(String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap();
		SysVariables entity  = sysVariablesService.queryById(id);
		if(entity  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return;
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		HtmlUtil.writerJson(response, context);
	}
	
	
	
	@RequestMapping("/delete")
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		sysVariablesService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}

}
