package com.itour.controller;

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
import com.itour.base.util.SessionUtils;
import com.itour.base.web.BaseController;
import com.itour.convert.FeedbackKit;
import com.itour.entity.Feedback;
import com.itour.entity.SysUser;
import com.itour.service.FeedbackService;
import com.itour.service.LogOperationService;
import com.itour.service.LogSettingDetailService;
import com.itour.service.LogSettingService;
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
	public ModelAndView  list(CustomerVo vo,HttpServletRequest request) throws Exception{
		SysUser user = SessionUtils.getUser(request);
		logger.info("#####"+(user!= null?("id:"+user.getId()+"email:"+user.getEmail()+",nickName:"+user.getNickName()):"")+"调用执行FeedbackController的list方法");
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
	public 	String pagination(@RequestParam(value="pageNo",defaultValue="1")int pageNo,String route,HttpServletRequest request,HttpServletResponse response) throws Exception{
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
		SysUser user = SessionUtils.getUser(request);
		logger.info("#####"+(user!= null?("id:"+user.getId()+"email:"+user.getEmail()+",nickName:"+user.getNickName()):"")+"调用执行FeedbackController的pagination方法");
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
	public EasyUIGrid  datalist(FeedbackVo vo,HttpServletRequest request,HttpServletResponse response) throws Exception{
		if(vo.getCreateTime() != null){
			//String createTime = DateUtil.getDateYmdHs(vo.getCreateTime());
			//Timestamp createTime =  new Timestamp(vo.getCreateTime().getTime());//DateUtil.fromStringToDate("YYYY-MM-dd",DateUtil.getDateLong(page.getCreateTime()));
			vo.setCreateTime(vo.getCreateTime());
		}
		BasePage<FeedbackVo> page = feedbackService.pagedQuery(vo);
		SysUser user = SessionUtils.getUser(request);
		logger.info("#####"+(user!= null?("id:"+user.getId()+"email:"+user.getEmail()+",nickName:"+user.getNickName()):"")+"调用执行FeedbackController的dataList方法");
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
	public String add(FeedbackVo vo,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object> context = getRootMap();
		String result = "";
		//response.setContentType("text/html;charset=UTF-8"); 
		String vcode = SessionUtils.getValidateCode(request);
		SessionUtils.removeValidateCode(request);//清除验证码，确保验证码只能用一次
	 	if(StringUtils.isBlank(vo.getVerifyCode())){
	 		context.put(SUCCESS, false);
	 		context.put(MSG, "验证码不能为空.");
	 		result = JsonUtils.encode(context);
			return result;
		}
		//判断验证码是否正确
	 	if(!vo.getVerifyCode().toLowerCase().equals(vcode)){   
	 		context.put(SUCCESS, false);
	 		context.put(MSG, "验证码输入错误.");
	 		result = JsonUtils.encode(context);
			return result;
		} 
		if(vo.getId()==null||StringUtils.isBlank(vo.getId().toString())){
			feedbackService.add(FeedbackKit.toEntity(vo));
		}else{
			Feedback fb = feedbackService.queryById(vo.getId());
			if(fb == null)
				feedbackService.add(FeedbackKit.toEntity(vo));
			else
				feedbackService.update(FeedbackKit.toEntity(vo));
		}
		context.put(SUCCESS, true);
		context.put("msg", "保存成功~");
		result = JsonUtils.encode(context);
		SysUser user = SessionUtils.getUser(request);
		logger.info("#####"+(user!= null?("id:"+user.getId()+"email:"+user.getEmail()+",nickName:"+user.getNickName()):"")+"调用执行FeedbackController的add方法");
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
	public void save(Feedback entity,Integer[] typeIds,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object> context =getRootMap();
		if(entity.getId()==null||StringUtils.isBlank(entity.getId().toString())){
			feedbackService.add(entity);
		}else{
			Feedback feedback = feedbackService.queryById(entity.getId());
			if(feedback == null)
				feedbackService.add(entity);
			else
				feedbackService.update(entity);
		}
		SysUser user = SessionUtils.getUser(request);
		logger.info("#####"+(user!= null?("id:"+user.getId()+"email:"+user.getEmail()+",nickName:"+user.getNickName()):"")+"调用执行FeedbackController的save方法");
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
	public String getId(String id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = getRootMap();
		Feedback entity  = feedbackService.queryById(id);
		if(entity  == null){
			//sendFailureMessage(response, "没有找到对应的记录!");
			context.put(SUCCESS, false);
			context.put(MSG, "没有找到对应的记录!");
			String result = JsonUtils.encode(context);
			return result;
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		String result = JsonUtils.encode(context);
		SysUser user = SessionUtils.getUser(request);
		logger.info("#####"+(user!= null?("id:"+user.getId()+"email:"+user.getEmail()+",nickName:"+user.getNickName()):"")+"调用执行FeedbackController的getId方法");
		return result;
	}
	
	
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public void delete(String[] id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		feedbackService.delete(id);
		SysUser user = SessionUtils.getUser(request);
		logger.info("#####"+(user!= null?("id:"+user.getId()+"email:"+user.getEmail()+",nickName:"+user.getNickName()):"")+"调用执行FeedbackController的delete方法");
		sendSuccessMessage(response, "删除成功");
	}
	
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/logicdelete", method = RequestMethod.POST)
	public void logicdelete(String[] id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		feedbackService.logicdelete(id);
		SysUser user = SessionUtils.getUser(request);
		logger.info("#####"+(user!= null?("id:"+user.getId()+"email:"+user.getEmail()+",nickName:"+user.getNickName()):"")+"调用执行FeedbackController的logicdelete方法");
		sendSuccessMessage(response, "删除成功");
	}

}
