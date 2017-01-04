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

import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.util.HtmlUtil;
import com.itour.base.web.BaseController;
import com.itour.entity.TravelStyle;
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
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/list", method = RequestMethod.POST) 
	public ModelAndView list(TravelStyleVo page,HttpServletRequest request) throws Exception{
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
	@ResponseBody
	@RequestMapping(value="/dataList.json", method = RequestMethod.POST) 
	public void  datalist(TravelStyleVo page,HttpServletResponse response) throws Exception{
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
	@ResponseBody
	@RequestMapping(value="/allData", method = RequestMethod.POST) 
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
	@ResponseBody
	@RequestMapping(value="/save", method = RequestMethod.POST)
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
	
	@ResponseBody
	@RequestMapping(value="/getId", method = RequestMethod.POST)
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
	
	
	@ResponseBody
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		travelStyleService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}

}
