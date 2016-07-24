package com.itour.controller;

import java.text.SimpleDateFormat;
import java.sql.Timestamp;
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

import com.itour.base.util.DateUtil;
import com.itour.base.util.HtmlUtil;
import com.itour.base.web.BaseController;
import com.itour.entity.Feedback;
import com.itour.page.FeedbackPage;
import com.itour.service.FeedbackService;

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
	
	private final static Logger log= Logger.getLogger(FeedbackController.class);
	
	// Servrice start
	@Autowired(required=false) //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private FeedbackService<Feedback> feedbackService; 
	
	
	
	
	
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/list") 
	public ModelAndView  list(FeedbackPage page,HttpServletRequest request) throws Exception{
		/*Map<String,Object>  context = getRootMap();
		List<Feedback> dataList = feedbackService.queryByList(page);
		//设置页面数据
		context.put("dataList", dataList);*/
		return forword("server/sys/feedback"); 
	}
	
	
	/**
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/dataList") 
	public void  datalist(FeedbackPage page,HttpServletResponse response) throws Exception{
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
	@RequestMapping("/save")
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
	
	
	@RequestMapping("/getId")
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
	
	
	
	@RequestMapping("/delete")
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		feedbackService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}

}
