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

import com.itour.base.annotation.Auth;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.easyui.EasyUIGrid;
import com.itour.base.page.BasePage;
import com.itour.base.util.HtmlUtil;
import com.itour.base.util.IDGenerator;
import com.itour.base.web.BaseController;
import com.itour.entity.RouteTemplate;
import com.itour.entity.SysRole;
import com.itour.service.RouteTemplateService;
import com.itour.vo.QuotationVo;
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
	public EasyUIGrid datalist(RouteTemplateVo vo,HttpServletResponse response) throws Exception{
		//List<RouteTemplate> dataList = routeTemplateService.queryByList(page);
		BasePage<RouteTemplateVo> page = routeTemplateService.pagedQuery(vo);
		return dataGridAdapter.wrap(page);
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
	public void save(RouteTemplate entity,Integer[] typeIds,HttpServletResponse response) throws Exception{
		//Map<String,Object>  context = new HashMap<String,Object>();
		entity.setRouteCode(IDGenerator.code(16));
		if(entity.getId()==null||StringUtils.isBlank(entity.getId().toString())){
			routeTemplateService.add(entity);
		}else{
			RouteTemplate rt = routeTemplateService.queryById(entity.getId());
			if(rt == null)
				routeTemplateService.add(entity);
			else
				routeTemplateService.update(entity);
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
		Map<String,Object>  context = new HashMap();
		RouteTemplate entity  = routeTemplateService.queryById(id);
		if(entity  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return new HashMap<String,Object>();
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		return context;
	}
	
	/**
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		routeTemplateService.delete(id);
		sendSuccessMessage(response, "删除成功");
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
