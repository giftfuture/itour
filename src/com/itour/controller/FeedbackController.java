package com.itour.controller;

import java.text.SimpleDateFormat;
import java.sql.Timestamp;
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
import com.itour.base.util.DateUtil;
import com.itour.base.util.HtmlUtil;
import com.itour.base.web.BaseController;
import com.itour.entity.Feedback;
import com.itour.service.FeedbackService;
import com.itour.vo.CustomerVo;

/**
 * 
 * <br>
 * <b>功能：</b>FeedbackController<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */ 
@Controller
@RequestMapping("/feedback") 
public class FeedbackController extends BaseController{
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	
	// Servrice start
	@Autowired //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private FeedbackService feedbackService; 
	
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
	public ModelAndView  list(CustomerVo vo,HttpServletRequest request) throws Exception{
		return forword("server/sys/feedback"); 
	}
	
	
	/**
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping(value="/dataList.json", method = RequestMethod.POST) 
	public void  datalist(CustomerVo page,HttpServletResponse response) throws Exception{
		if(page.getCreateTime() != null){
			Timestamp createTime =  new Timestamp(page.getCreateTime().getTime());//DateUtil.fromStringToDate("YYYY-MM-dd",DateUtil.getDateLong(page.getCreateTime()));
			page.setCreateTime(createTime);
		}
	    List<Feedback> dataList = feedbackService.queryByList(page);
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
	public void save(Feedback entity,Integer[] typeIds,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap<String,Object>();
		if(entity.getId()==null||StringUtils.isBlank(entity.getId().toString())){
			feedbackService.add(entity);
		}else{
			Feedback feedback = feedbackService.queryById(entity.getId());
			if(feedback == null)
				feedbackService.add(entity);
			else
				feedbackService.update(entity);
		}
		sendSuccessMessage(response, "保存成功~");
	}
	
	
	@ResponseBody
	@RequestMapping(value="/getId", method = RequestMethod.POST)
	public void getId(String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap();
		Feedback entity  = feedbackService.queryById(id);
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
		feedbackService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}

}
