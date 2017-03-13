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

import com.itour.base.annotation.Auth;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.easyui.EasyUIGrid;
import com.itour.base.json.JsonUtils;
import com.itour.base.page.BasePage;
import com.itour.base.web.BaseController;
import com.itour.entity.QuoteForm;
import com.itour.service.QuoteFormService;
import com.itour.vo.QuoteFormVo;

@Controller
@RequestMapping("/quoteForm") 
public class QuoteFormController extends BaseController {
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	
	// Servrice start
	@Autowired //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private QuoteFormService  quoteFormService; 
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
	public ModelAndView list(QuoteFormVo page,HttpServletRequest request) throws Exception{
	/*	Map<String,Object>  context = getRootMap();
		List<Quotation> dataList = quotationService.queryByList(page);
		//设置页面数据
		context.put("dataList", dataList);*/
		return forward("server/sys/quotation"); 
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
	public EasyUIGrid  datalist(QuoteFormVo vo,HttpServletResponse response) throws Exception{
		//List<Quotation> dataList = quotationService.queryByList(vo);
		BasePage<QuoteFormVo> page = quoteFormService.pagedQuery(vo);
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
	public void save(QuoteForm entity,Integer[] typeIds,HttpServletResponse response) throws Exception{
		//Map<String,Object> context =getRootMap();
		if(entity.getId()==null||StringUtils.isBlank(entity.getId().toString())){
			quoteFormService.add(entity);
		}else{
			QuoteForm qo = quoteFormService.queryById(entity.getId());
			if(qo == null)
				quoteFormService.add(entity);
			else
				quoteFormService.update(entity);
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
		Map<String,Object>  context = getRootMap();
		QuoteForm entity  = quoteFormService.queryById(id);
		if(entity  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return new HashMap<String,Object>();
		}
		String data = JsonUtils.encode(entity);
		context.put(SUCCESS, true);
		context.put("data", data);
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
		quoteFormService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}


}
