package com.itour.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.itour.base.web.BaseController;
import com.itour.base.util.HtmlUtil;
import com.itour.base.util.IDGenerator;
import com.itour.base.util.json.JSONUtil;
import com.itour.base.entity.BaseEntity.DELETED;
import com.itour.entity.Customers;
import com.itour.entity.SysMenu;
import com.itour.page.CustomersPage;
import com.itour.service.CustomersService;
 
/**
 * 
 * <br>
 * <b>功能：</b>CustomersController<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */ 
@Controller
@RequestMapping("/customers") 
public class CustomersController extends BaseController{
	
	private final static Logger log= Logger.getLogger(CustomersController.class);
	
	// Servrice start
	@Autowired(required=false) //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private CustomersService<Customers> customersService; 
	
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/list") 
	public ModelAndView list(CustomersPage page,HttpServletRequest request) throws Exception{
	/*	Map<String,Object>  context = getRootMap();
		//page.setDeleted(DELETED.NO.key);
		List<Customers> dataList = customersService.queryByList(page);
		//设置页面数据
		context.put("dataList", dataList);*/
		return forword("server/sys/customers"); 
	}
	
	
	/**
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/dataList") 
	public void  datalist(CustomersPage page,HttpServletResponse response) throws Exception{
		List<Customers> dataList = customersService.queryByList(page);
		//设置页面数据
		Map<String,Object> jsonMap = new HashMap<String,Object>();
		jsonMap.put("total",page.getPager().getRowCount());
		jsonMap.put("rows", dataList);
	//	Customers cust = dataList.get(0);
		//System.out.println("####"+JSON.toJSONString(cust));
		//System.out.println("####"+JSON.toJSONString(dataList));
	 //   JSONObject jsonObj = JSONObject.parseObject(cust.toString());
	 //   System.out.println(jsonObj);
		HtmlUtil.writerJSON(response,jsonMap);
	}
	
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/save")
	public void save(Customers entity,Integer[] typeIds,HttpServletResponse response) throws Exception{
		//Map<String,Object>  context = new HashMap<String,Object>();
		entity.setCustomerId(IDGenerator.getUUID());
		if(entity.getId()==null||StringUtils.isBlank(entity.getId().toString())){
			//entity.setId(IDGenerator.getLongId());
			customersService.add(entity);
		}else{
			Customers cust = customersService.queryById(entity.getId());
			if(cust == null)
				customersService.add(entity);
			else
				customersService.update(entity);
		}
		sendSuccessMessage(response, "保存成功~");
	}
	
	
	@RequestMapping("/getId")
	public void getId(String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap();
		Customers entity  = customersService.queryById(id);
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
		
		customersService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}

}
