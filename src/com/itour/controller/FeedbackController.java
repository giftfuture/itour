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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;
import com.itour.base.annotation.Auth;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.easyui.EasyUIGrid;
import com.itour.base.json.JsonUtils;
import com.itour.base.page.BasePage;
import com.itour.base.page.Pager;
import com.itour.base.web.BaseController;
import com.itour.convert.FeedbackKit;
import com.itour.entity.Feedback;
import com.itour.service.FeedbackService;
import com.itour.util.Constants;
import com.itour.vo.CustomerVo;
import com.itour.vo.FeedbackVo;

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
	@Auth(verifyLogin=true,verifyURL=true)
	@RequestMapping(value="/list") 
	public ModelAndView  list(CustomerVo vo,HttpServletRequest request) throws Exception{
		return forward("server/sys/feedback"); 
	}
	/**
	 * 
	 * @param vo
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@Auth(verifyLogin=false,verifyURL=false)
	@ResponseBody
	@RequestMapping(value="/pagination", method = RequestMethod.POST) 
	public 	String pagination(@RequestParam(value="pageNo",defaultValue="1")int pageNo,String route,HttpServletResponse response) throws Exception{
		Map<String,Object> context = getRootMap();
		FeedbackVo fv = new FeedbackVo();
		fv.setRoute(route);
		fv.setPage(pageNo);
		fv.setRows(Constants.fbperPage);
		//fv.setLimit(Constants.fbperPage);
		fv.getPager().setPageId(pageNo);
		fv.getPager().setPageSize(Constants.fbperPage);
		fv.getPager().setOrderField("prefered_date");
		fv.getPager().setOrderDirection(false);
		List<Feedback> list = (List<Feedback>) feedbackService.queryByList(fv);
		int count = feedbackService.queryByCount(fv);
		List<FeedbackVo> records = Lists.newArrayList();
		for(Feedback fb:list) {
			records.add(FeedbackKit.toRecord(fb));
		}
		BasePage<FeedbackVo> page = new BasePage<FeedbackVo>(fv.getStart(), fv.getLimit(), records, count);
		//Pager pager = new Pager();
		page.setPage(pageNo);
		Pager pager = page.getPager();
		pager.setPageId(pageNo);
		pager.setPageSize(Constants.fbperPage);
		pager.setRowCount(page.getTotal());
		//page.getPager()
		//page.setTotalPage(page.getPager().getPageCount());
		//page.getPager().getPageCount();
		page.setPager(pager);
		context.put(SUCCESS, true);
		context.put("result", page);
		String result = JsonUtils.encode(context);
		return result;
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
	public EasyUIGrid  datalist(FeedbackVo vo,HttpServletResponse response) throws Exception{
		if(vo.getCreateTime() != null){
			//String createTime = DateUtil.getDateYmdHs(vo.getCreateTime());
			//Timestamp createTime =  new Timestamp(vo.getCreateTime().getTime());//DateUtil.fromStringToDate("YYYY-MM-dd",DateUtil.getDateLong(page.getCreateTime()));
			vo.setCreateTime(vo.getCreateTime());
		}
		BasePage<FeedbackVo> page = feedbackService.pagedQuery(vo);
		return dataGridAdapter.wrap(page);
	}
	/**
	 * 
	 * @param entity
	 * @param typeIds
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=false,verifyURL=false)
	@ResponseBody
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String add(Feedback feedback,HttpServletResponse response) throws Exception{
		Map<String,Object> context = getRootMap();
		//response.setContentType("text/html;charset=UTF-8"); 
		if(feedback.getId()==null||StringUtils.isBlank(feedback.getId().toString())){
			feedbackService.add(feedback);
		}else{
			Feedback fb = feedbackService.queryById(feedback.getId());
			if(fb == null)
				feedbackService.add(feedback);
			else
				feedbackService.update(feedback);
		}
		context.put(SUCCESS, true);
		context.put("msg", "保存成功~");
		String result = JsonUtils.encode(context);
		return result;
		//sendSuccessMessage(response, "保存成功~");
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
	public void save(Feedback entity,Integer[] typeIds,HttpServletResponse response) throws Exception{
		Map<String,Object>  context =getRootMap();
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
	
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/getId", method = RequestMethod.POST)
	public Map<String,Object> getId(String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = getRootMap();
		Feedback entity  = feedbackService.queryById(id);
		if(entity  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return new HashMap<String,Object>();
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		return context;
	}
	
	
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		feedbackService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}

}
