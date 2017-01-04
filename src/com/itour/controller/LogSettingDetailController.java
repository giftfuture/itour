package com.itour.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.web.BaseController;
import com.itour.base.util.HtmlUtil;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.entity.BaseEntity.DELETED;
import com.itour.entity.LogOperation;
import com.itour.entity.LogSettingDetail;
import com.itour.vo.LogSettingDetailVo;
import com.itour.service.LogSettingDetailService;
 
/**
 * 
 * <br>
 * <b>功能：</b>LogSettingDetailController<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */ 
@Controller
@RequestMapping("/logSettingDetail") 
public class LogSettingDetailController extends BaseController{
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	
	// Servrice start
	@Autowired //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private LogSettingDetailService<LogSettingDetail> logSettingDetailService; 
	
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
	public ModelAndView  list(LogSettingDetailVo page,HttpServletRequest request) throws Exception{
		/*Map<String,Object>  context = getRootMap();
		List<LogSettingDetail> dataList = logSettingDetailService.queryByList(page);
		//设置页面数据
		context.put("dataList", dataList);*/
		return forword("server/sys/logSettingDetail"); 
	}
	
	
	/**
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping(value="/dataList.json", method = RequestMethod.POST) 
	public void  datalist(LogSettingDetailVo page,HttpServletResponse response) throws Exception{
		List<LogSettingDetail> dataList = logSettingDetailService.queryByList(page);
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
	@ResponseBody
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public void save(LogSettingDetail entity,Integer[] typeIds,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap<String,Object>();
		if(entity.getDetailCode()==null||StringUtils.isBlank(entity.getDetailCode().toString())){
			logSettingDetailService.add(entity);
		}else{
			logSettingDetailService.update(entity);
		}
		sendSuccessMessage(response, "保存成功~");
	}
	
	@ResponseBody
	@RequestMapping(value="/getId", method = RequestMethod.POST)
	public void getId(String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap();
		LogSettingDetail entity  = logSettingDetailService.queryById(id);
		if(entity  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return;
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		HtmlUtil.writerJson(response, context);
	}
	
	
	@ResponseBody
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		logSettingDetailService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}

}
