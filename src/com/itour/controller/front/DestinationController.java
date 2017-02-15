package com.itour.controller.front;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.util.FilePros;
import com.itour.base.web.BaseController;
import com.itour.entity.TravelItem;
import com.itour.service.TravelItemService;
import com.itour.util.Constants;
import com.itour.vo.TravelItemVo;

@Controller
@RequestMapping("/destination") 
public class DestinationController extends BaseController{
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	@Autowired
	private TravelItemService travelItemService;
	@Autowired
	private DataGridAdapter dataGridAdapter;
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/main") 
	public ModelAndView main(TravelItemVo vo,HttpServletRequest request) throws Exception{
	 	Map<String,Object>  context = getRootMap();
	 	List<HashMap<String,String>> allScopes = travelItemService.allScopes();
	 	Map<String,List<TravelItem>> sortedItems = Maps.newHashMap();
	 	Map<String,String> scopes = Maps.newHashMap();
	 	List<TravelItem> list = Lists.newArrayList();
	 	List<TravelItem> sublist = Lists.newArrayList();
	 	Map<String,Integer> tiSizes = Maps.newHashMap();
	 	for(Map<String,String> scope:allScopes){
	 		String key= "";
	 		String value="";
	 		Iterator<String> it = scope.keySet().iterator();
	 		while(it.hasNext()){
	 			String next = it.next();
	 			if(next.equalsIgnoreCase("scope")){
	 				value = scope.get(next);
	 			}
	 			if(next.equalsIgnoreCase("scopeAlias")){
	 				key = scope.get(next);
	 				list = travelItemService.queryByScopeAlias(key);
	 				if(list != null && list.size() > Constants.maxDestinations){
	 					sublist = list.subList(0, Constants.maxDestinations);
	 					String ptopath = FilePros.uploadPtopath();
	 					for(TravelItem ti:sublist){
	 						if(StringUtils.isNotEmpty(ti.getCover())){	 							
	 							String realCover = ptopath +ti.getItemCode()+"_"+ti.getItem()+"/"+ ti.getCover();//Constants.basePhoto
	 							ti.setCover(realCover);
	 						}
	 					}
	 				}
	 			}
	 			if(StringUtils.isNoneEmpty(key,value)){	 				
	 				scopes.put(key, value);
	 			}
	 			if(StringUtils.isNotEmpty(value) && list != null){	 				
	 				sortedItems.put(value, sublist);
	 				tiSizes.put(value, list.size());
	 			}
	 		}
	 	}
	 	List<TravelItem> items = travelItemService.searchTravelItem(new HashMap());
		//设置页面数据
		context.put("scopes", scopes); 
		context.put("items", items);
		context.put("sortedItems",sortedItems);
		context.put("tiSizes",tiSizes);
		context.put("maxd", Constants.maxDestinations);
		return forward("front/destination/destinations",context); 
	}
	/**
	 * 
	 * @param scopeAlias
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value="/detail/{alias}", method = RequestMethod.GET) 
	public ModelAndView detail(@PathVariable("alias")String alias,HttpServletRequest request,HttpServletResponse response) throws Exception{
	 	Map<String,Object>  context = getRootMap();
	 	TravelItem item = travelItemService.getByAlias(alias);
		context.put("item", item); 
		return forward("front/destination/destinations-sc",context); 
	}
	/**
	 * 
	 * @param scopeAlias
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value="/moredests", method = RequestMethod.GET) 
	public ModelAndView moredests(String scopeAlias,HttpServletRequest request) throws Exception{
	 	Map<String,Object>  context = getRootMap();
	 	List<TravelItem> list = travelItemService.queryByScopeAlias(scopeAlias);
		//page.setDeleted(DELETED.NO.key);
		context.put("list", list); 
		return forward("front/destination/destinations-sc",context); 
	}
}