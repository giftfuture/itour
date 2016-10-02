package com.itour.controller.front;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.web.BaseController;
import com.itour.entity.Customers;
import com.itour.entity.TravelItem;
import com.itour.page.CustomersPage;
import com.itour.service.CustomersService;
import com.itour.service.TravelItemService;
import com.itour.util.Constants;

@Controller
@RequestMapping("/hiking") 
public class HikingController extends BaseController{
	
	private final static Logger log= Logger.getLogger(HikingController.class);
	
	
	
	// Servrice start
	@Autowired(required=false) //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private CustomersService<Customers> customersService; 
	@Autowired(required=false) 
	private TravelItemService<TravelItem> travelItemService; 
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@SuppressWarnings("rawtypes")
	@RequestMapping("/goHiking") 
	public ModelAndView goHiking(HttpServletRequest request,HttpServletResponse response) throws Exception{
	/*	Map<String,Object>  context = getRootMap();
		//page.setDeleted(DELETED.NO.key);
		List<Customers> dataList = customersService.queryByList(page);
		//设置页面数据
		context.put("dataList", dataList);*/
		Map<String,Object> map = new HashMap<String,Object>();
		if(StringUtils.isNotEmpty(Constants.travelStyles.get(Constants.HIKING))){			
			map.put("alias", Constants.HIKING);
		}
		List<TravelItem> items = travelItemService.searchTravelItem(map);
		/*for(TravelItem item:items){
			String photos = item.getCover();
			if(StringUtils.isNotEmpty(photos)){
				String cover = Constants.basePhoto+ StringUtils.split("|")[0];
				item.setCover(cover);
			}
		}*/		
		int rows = items.size()%Constants.perRow > 0 ? items.size()/Constants.perRow+1:items.size()/Constants.perRow;
		map.clear();
		map.put("count", items.size());
		map.put("perRow", Constants.perRow);
		map.put("rows", rows);
		Map<Integer,List<TravelItem>> rowItems = new HashMap<Integer,List<TravelItem>>();
		for(int i=0;i<rows;i++){
			int end = Constants.perRow*(i+1)>items.size() ? items.size() : Constants.perRow*(i+1);
			rowItems.put(i,items.subList(Constants.perRow*i, end));
		}
		map.put("items", rowItems);
		return forword("front/trek/Trekkings",map); 
	}
	/**
	 * 
	 * @param id
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/detail/{id}", method = RequestMethod.GET) 
	public ModelAndView detail(@PathVariable String id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object> map = new HashMap<String,Object>();
		TravelItem item = travelItemService.queryById(id);
		map.put("item", item);
		return forword("front/trek/trekking",map); 
	}
}