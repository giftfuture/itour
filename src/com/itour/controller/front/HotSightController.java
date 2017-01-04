package com.itour.controller.front;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.web.BaseController;
import com.itour.entity.Customers;
import com.itour.entity.TravelItem;
import com.itour.service.CustomersService;
import com.itour.service.TravelItemService;
import com.itour.vo.CustomerVo;

@Controller
@RequestMapping("/hotsight") 
public class HotSightController extends BaseController{
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	@Autowired
	private DataGridAdapter dataGridAdapter;
	// Servrice start
	@Autowired//自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private TravelItemService<TravelItem> travelItemService; 
	@RequestMapping("/main") 
	public ModelAndView main(CustomerVo vo,HttpServletRequest request) throws Exception{
		Map<String,Object>  context = getRootMap();
		//page.setDeleted(DELETED.NO.key);
		Map params = new HashMap();
		params.put("hot", 1);
		List<TravelItem> dataList = travelItemService.searchTravelItem(params);
		//设置页面数据
		context.put("dataList", dataList);
		return forword("front/hotsight/hotsight"); 
	}
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/list") 
	public ModelAndView list(CustomerVo page,HttpServletRequest request) throws Exception{
	/*	Map<String,Object>  context = getRootMap();
		//page.setDeleted(DELETED.NO.key);
		List<Customers> dataList = customersService.queryByList(page);
		//设置页面数据
		context.put("dataList", dataList);*/
		return forword("server/sys/customers"); 
	}

}
