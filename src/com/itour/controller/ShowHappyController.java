package com.itour.controller;

import java.util.HashMap;
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

import com.google.common.collect.Maps;
import com.itour.base.annotation.Auth;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.easyui.EasyUIGrid;
import com.itour.base.json.JsonUtils;
import com.itour.base.page.BasePage;
import com.itour.base.web.BaseController;
import com.itour.convert.ShowHappyKit;
import com.itour.entity.ShowHappy;
import com.itour.service.ShowHappyService;
import com.itour.vo.ShowHappyVo;

/**
 * 
 * <br>
 * <b>功能：</b>ShowHappyController<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */ 
@Controller
@RequestMapping("/showhappy") 
public class ShowHappyController extends BaseController{
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	
	// Servrice start
	@Autowired //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private ShowHappyService showHappyService; 
	@Autowired
	private DataGridAdapter dataGridAdapter;
	@RequestMapping("/main") 
	public ModelAndView main(ShowHappyVo vo,HttpServletRequest request) throws Exception{
		return forward("front/happy/happiness"); 
	}
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@RequestMapping(value="/list") 
	public ModelAndView  list(ShowHappyVo vo,HttpServletRequest request) throws Exception{
		return forward("server/sys/showhappy"); 
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
	public EasyUIGrid  datalist(ShowHappyVo vo,HttpServletResponse response) throws Exception{
		if(vo.getCreateTime() != null){
			//String createTime = DateUtil.getDateYmdHs(vo.getCreateTime());
			//Timestamp createTime =  new Timestamp(vo.getCreateTime().getTime());//DateUtil.fromStringToDate("YYYY-MM-dd",DateUtil.getDateLong(page.getCreateTime()));
			vo.setCreateTime(vo.getCreateTime());
		}
		BasePage<Map<String,Object>> page = showHappyService.pagedQuery(vo);
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
	public String add(ShowHappyVo showhappy,HttpServletResponse response) throws Exception{
		Map<String,Object> context = Maps.newHashMap();
		//response.setContentType("text/html;charset=UTF-8"); 
		if(showhappy.getId()==null||StringUtils.isBlank(showhappy.getId().toString())){
			showHappyService.add(ShowHappyKit.toEntity(showhappy));
		}else{
			ShowHappy fb = showHappyService.queryById(showhappy.getId());
			if(fb == null)
				showHappyService.add(ShowHappyKit.toEntity(showhappy));
			else
				showHappyService.update(ShowHappyKit.toEntity(showhappy));
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
	public void save(ShowHappyVo showhappy,Integer[] typeIds,HttpServletResponse response) throws Exception{
		//Map<String,Object>  context = Maps.newHashMap();
		if(showhappy.getId()==null||StringUtils.isEmpty(showhappy.getId().toString())){
			showHappyService.add(ShowHappyKit.toEntity(showhappy));
		}else{
			ShowHappy sh = showHappyService.queryById(showhappy.getId());
			if(sh == null){
				showHappyService.add(ShowHappyKit.toEntity(showhappy));
			}else{
				showHappyService.update(ShowHappyKit.toEntity(showhappy));
			}
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
		Map<String,Object>  context = Maps.newHashMap();
		ShowHappy entity  = showHappyService.queryById(id);
		if(entity  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return new HashMap<String,Object>();
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		return context;
	}
	
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		showHappyService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}

}
