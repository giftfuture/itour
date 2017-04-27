package com.itour.controller.front;

import java.util.HashMap;
import java.util.Iterator;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.util.FilePros;
import com.itour.base.web.BaseController;
import com.itour.entity.Areas;
import com.itour.entity.TravelItem;
import com.itour.service.AreasService;
import com.itour.service.LogOperationService;
import com.itour.service.LogSettingDetailService;
import com.itour.service.LogSettingService;
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
	private AreasService areasService;
	@Autowired
	private DataGridAdapter dataGridAdapter;
	@Autowired
	private LogSettingService logSettingService;
	
	@Autowired
	private LogSettingDetailService logSettingDetailService;
	
	@Autowired
	private LogOperationService logOperationService;
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/main") 
	public ModelAndView main(TravelItemVo vo,HttpServletRequest request) throws Exception{
	 	Map<String,Object>  context = getRootMap();
	 	List<Areas> allScopes = areasService.allAreas();
	 	Map<String,List<TravelItem>> sortedItems = Maps.newHashMap();
	 	Map<String,String> scopes = Maps.newHashMap();
	 	List<TravelItem> list = Lists.newArrayList();
	 	List<TravelItem> sublist = Lists.newArrayList();
	 	Map<String,Integer> tiSizes = Maps.newHashMap();
	 	for(Areas scope:allScopes){
			list = travelItemService.queryByScope(scope.getId());
			if(list != null && list.size() > Constants.maxDestinations){
				sublist = list.subList(0, Constants.maxDestinations);
			}else{
				sublist = list;
			}
			String ptopath = FilePros.httpitemCoverpath();
			for(TravelItem ti:sublist){
				if(StringUtils.isNotEmpty(ti.getCover())){	 							
					String realCover = ptopath +ti.getItemCode()+"_"+ti.getAlias()+"/"+ ti.getCover();
					ti.setCover(realCover);
				}
			}
			scopes.put(scope.getId(), scope.getAreaname());
 			if(StringUtils.isNotEmpty(scope.getAreaname()) && list != null){	 				
 				sortedItems.put(scope.getAreaname(), sublist);
 				tiSizes.put(scope.getAreaname(), list.size());
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
	 	List<Areas> allScopes = areasService.allAreas();
	 	Map<String,String> scopes = Maps.newHashMap();
	 	for(Areas area:allScopes){
			scopes.put(area.getId(), area.getAreaname());
	 	}
	 	List<TravelItem> items = travelItemService.searchTravelItem(new HashMap());		
		context.put("scopes", scopes); 
		context.put("items", items);
		return forward("front/destination/destdetail",context); 
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
	@RequestMapping(value="/moredests/{scope}", method = RequestMethod.GET) 
	public ModelAndView moredests(@PathVariable("scope")String scope,HttpServletRequest request) throws Exception{
	 	Map<String,Object> context = getRootMap();
	 	List<TravelItem> list = travelItemService.queryByScope(scope);//.queryByScopeAlias(scopeAlias);
	 	String ptopath = FilePros.itemCoverpath();
		for(TravelItem ti:list){
				if(StringUtils.isNotEmpty(ti.getCover())){	 							
					String realCover = ptopath +ti.getItemCode()+"_"+ti.getAlias()+"/"+ ti.getCover();//Constants.basePhoto
					ti.setCover(realCover);
				}
			}
		context.put("dests",scope); 	
		context.put("list",list); 	
		return forward("front/destination/moredests",context);   
	}
}