package com.itour.controller.front;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.web.BaseController;
import com.itour.entity.TravelItem;
import com.itour.service.DestinationService;
import com.itour.service.TravelItemService;
import com.itour.vo.CustomerVo;

@Controller
@RequestMapping("/destination") 
public class DestinationController extends BaseController{
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	@Autowired
	private TravelItemService travelItemService;
	// Servrice start
	@Autowired
	private DestinationService destService; 
	@Autowired
	private DataGridAdapter dataGridAdapter;
	
	@RequestMapping("/main") 
	public ModelAndView main(CustomerVo vo,HttpServletRequest request) throws Exception{
	 	Map<String,Object>  context = getRootMap();
	 	List<Map<String,String>> scopes = travelItemService.allScopes();
	 	List<TravelItem> items = travelItemService.searchTravelItem(new HashMap());
		//设置页面数据
		context.put("scopes", scopes); 
		context.put("items", items);
		return forward("front/destination/destinations",context); 
	}
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/list") 
	public ModelAndView list(CustomerVo vo,HttpServletRequest request) throws Exception{
	/*	Map<String,Object>  context = getRootMap();
		//page.setDeleted(DELETED.NO.key);
		List<Customers> dataList = customersService.queryByList(page);
		//设置页面数据
		context.put("dataList", dataList);*/
		return forward("server/sys/customers"); 
	}
	
	@RequestMapping("/toMoreDest") 
	public ModelAndView toMoreDest(CustomerVo vo,HttpServletRequest request) throws Exception{
	 	Map<String,Object>  context = getRootMap();
		//page.setDeleted(DELETED.NO.key);
		/*List<Customers> dataList = customersService.queryByList(page);*/
		//设置页面数据
		//context.put("dataList", dataList); 
		return forward("front/destination/destinations-sc",context); 
	}
}