package com.itour.controller.front;

import java.util.Arrays;
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
	 	Map<String,Object> context = getRootMap();
	 	List<Areas> allScopes = areasService.allAreas();
	 	Map<String,List<TravelItemVo>> sortedItems = Maps.newHashMap();
	 	Map<String,String> scopes = Maps.newHashMap();
	 	List<TravelItemVo> list = Lists.newArrayList();
	 	List<TravelItemVo> sublist = Lists.newArrayList();
	 	Map<String,Integer> tiSizes = Maps.newHashMap();
	 	for(Areas scope:allScopes){
			list = travelItemService.queryByScope(scope.getId());
			if(list != null && list.size() > Constants.maxDestinations){
				sublist = list.subList(0, Constants.maxDestinations);
			}else{
				sublist = list;
			}
			String ptopath = FilePros.httpitemCoverpath();
			for(TravelItemVo ti:sublist){
				if(StringUtils.isNotEmpty(ti.getCover())){	 							
					String realCover = ptopath+"/" +ti.getItemCode()+"_"+ti.getAlias()+"/"+ ti.getCover();
					ti.setCover(realCover);
				}
			}
 			if(StringUtils.isNoneEmpty(scope.getId(),scope.getAreaname()) && sublist != null && sublist.size() >0){	 				
 				sortedItems.put(scope.getPinyin()+"_"+scope.getShortname(), sublist);
 				tiSizes.put(scope.getPinyin()+"_"+scope.getShortname(), list.size());		
 				scopes.put(scope.getId(), scope.getAreaname());
 			}
	 	}
	 	List<TravelItemVo> items = travelItemService.searchTravelItem(new HashMap());		
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
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value="/detail/{alias}", method = RequestMethod.GET) 
	public ModelAndView detail(@PathVariable("alias")String alias,HttpServletRequest request,HttpServletResponse response) throws Exception{
	 	Map<String,Object>  context = getRootMap();
	 	List<Areas> allScopes = areasService.allAreas();
	 	List<TravelItemVo> items = travelItemService.searchTravelItem(new HashMap());		
		context.put("items", items);
	 	TravelItemVo itemvo = travelItemService.getByAlias(alias);	
	 	String [] photos = itemvo.getPhotos().split(",");
	 	String photoPath = FilePros.httptravelitemPhotoPath();
	 	if(photos!=null && photos.length>0){
	 		for(String photo:photos){
	 			photo = photoPath+"/"+itemvo.getItemCode()+"_"+itemvo.getAlias()+"/"+ photo;
	 		}
	 	}
		context.put("scopes", allScopes); 
		context.put("itemvo", itemvo);
		context.put("photos", photos);
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
	 	List<TravelItemVo> list = travelItemService.queryByScope(scope);//.queryByScopeAlias(scopeAlias);
	 	String ptopath = FilePros.itemCoverpath();
		for(TravelItemVo ti:list){
				if(StringUtils.isNotEmpty(ti.getCover())){	 							
					String realCover = ptopath+"/" +ti.getItemCode()+"_"+ti.getAlias()+"/"+ ti.getCover();//Constants.basePhoto
					ti.setCover(realCover);
				}
			}
		context.put("dests",scope); 	
		context.put("list",list); 	
		return forward("front/destination/moredests",context);   
	}
}