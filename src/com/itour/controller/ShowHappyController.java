package com.itour.controller;

import java.util.Arrays;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Maps;
import com.itour.base.annotation.Auth;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.easyui.EasyUIGrid;
import com.itour.base.json.JsonUtils;
import com.itour.base.page.BasePage;
import com.itour.base.util.FilePros;
import com.itour.base.web.BaseController;
import com.itour.convert.ShowHappyKit;
import com.itour.entity.ShowHappy;
import com.itour.entity.TravelItem;
import com.itour.entity.TravelStyle;
import com.itour.service.ShowHappyService;
import com.itour.util.Constants;
import com.itour.vo.RouteTemplateVo;
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
	/**
	 * 
	 * @param vo
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/main") 
	public ModelAndView main(@RequestParam(value="pageNo",defaultValue="1")int pageNo,HttpServletRequest request) throws Exception{
		Map<String,Object> context = getRootMap();
		ShowHappyVo vo = new ShowHappyVo();
		vo.setPage(pageNo);
		vo.getPager().setPageSize(Constants.perPage);
		vo.getPager().setPageId(pageNo);
		BasePage<Map<String, Object>> page = showHappyService.pagedQuery(vo);
		//List<Map<String, Object>> records = page.getRecords();
		for(Map<String, Object> map:page.getRecords()){
			if(map.get("content").toString().length()> 30){
				map.put("content", map.get("content").toString().substring(0, 30)+"...");
			}
		}
		context.put("records", page.getRecords());
		context.put("pageNo",pageNo);
		context.put("total",page.getTotal());
		//context.put("rows",page.getRows());
		return forward("front/happy/happiness",context); 
	}
	/**
	 * 
	 * @param vo
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/sharehappy") 
	public ModelAndView sharehappy(ShowHappyVo vo,HttpServletRequest request) throws Exception{
		return forward("front/happy/sharehappy"); 
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
	 * @param id
	 * @param request
	 * @param response
	 * @return${alias:.*}  {key:[a-zA-Z0-9\\.]+}   @RequestParam("title") String alias,
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value="/detail/{title}", method = RequestMethod.GET) 
	public ModelAndView detail(@PathVariable("title") String title,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object> context = getRootMap();
	//	map.put("items", items);
	//	map.put("rt", rt);
		return forward("front/happy/happydetail",context); 
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
		Map<String,Object> context = getRootMap();
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
		Map<String,Object> context = getRootMap();
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
		Map<String,Object> context = getRootMap();
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
