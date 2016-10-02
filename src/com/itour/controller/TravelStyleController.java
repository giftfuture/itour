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
import com.itour.entity.TravelOrder;
import com.itour.entity.TravelStyle;
import com.itour.page.TravelStylePage;
import com.itour.service.TravelStyleService;
 
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
	
	private final static Logger log= Logger.getLogger(TravelStyleController.class);
	
	// Servrice start
	@Autowired(required=false) //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private TravelStyleService<TravelStyle> travelStyleService; 
	
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/list") 
	public ModelAndView list(TravelStylePage page,HttpServletRequest request) throws Exception{
		/*Map<String,Object>  context = getRootMap();
		List<TravelStyle> dataList = travelStyleService.queryByList(page);
		context.put("dataList", dataList);//设置页面数据
*/		return forword("server/sys/travelStyle"); 
	}
	
	
	/**
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/dataList") 
	public void  datalist(TravelStylePage page,HttpServletResponse response) throws Exception{
		List<TravelStyle> dataList = travelStyleService.queryByList(page);
		//设置页面数据
		Map<String,Object> jsonMap = new HashMap<String,Object>();
		jsonMap.put("total",page.getPager().getRowCount());
		jsonMap.put("rows", dataList);
		HtmlUtil.writerJson(response, jsonMap);
	}
	/**
	 * 
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/allData") 
	public void allData(HttpServletResponse response)throws Exception{
		System.out.println("###########");
		List<TravelStyle> dataList = travelStyleService.queryByList(null);
		Map<String,Object> jsonMap = new HashMap<String,Object>();
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
	public void save(TravelStyle entity,Integer[] typeIds,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap<String,Object>();
		if(entity.getId()==null||StringUtils.isBlank(entity.getId().toString())){
			travelStyleService.add(entity);
		}else{
			TravelStyle ts = travelStyleService.queryById(entity.getId());
			if(ts == null)
				travelStyleService.add(entity);
			else
				travelStyleService.update(entity);
		}
		sendSuccessMessage(response, "保存成功~");
	}
	
	
	@RequestMapping("/getId")
	public void getId(String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap();
		TravelStyle entity  = travelStyleService.queryById(id);
		if(entity  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return;
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		HtmlUtil.writerJSON(response, context);
	}
	
	
	
	@RequestMapping("/delete")
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		travelStyleService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}

}
