package com.itour.controller.front;

import java.io.File;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfig;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.itour.base.json.JsonUtils;
import com.itour.base.page.BasePage;
import com.itour.base.page.Pager;
import com.itour.base.util.FilePros;
import com.itour.base.util.PinYinUtil;
import com.itour.base.web.BaseController;
import com.itour.entity.TravelItem;
import com.itour.entity.TravelStyle;
import com.itour.service.LevelAreaService;
import com.itour.service.LogOperationService;
import com.itour.service.LogSettingDetailService;
import com.itour.service.LogSettingService;
import com.itour.service.QuoteFormService;
import com.itour.service.RouteTemplateService;
import com.itour.service.ShowHappyService;
import com.itour.service.TravelItemService;
import com.itour.service.TravelStyleService;
import com.itour.util.Constants;
import com.itour.vo.RouteTemplateVo;
import com.itour.vo.ShowHappyVo;

@Controller
public class IndexController extends BaseController {
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	
	// Servrice start
	@Autowired 
	private TravelItemService<TravelItem> travelItemService; 
	@Autowired
	private LevelAreaService levelAreaService;
	@Autowired 
	private RouteTemplateService routeTemplateService;
	@Autowired 
	private TravelStyleService travelStyleService;
	@Autowired
	private QuoteFormService quoteFormService;
	@Autowired
	private FreeMarkerConfig freeMarkerConfig;
	@Autowired
	private LogSettingService logSettingService;
	@Autowired
	private LogSettingDetailService logSettingDetailService;
	@Autowired
	private LogOperationService logOperationService;
	@Autowired
	private ShowHappyService showHappyService; 
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/",method = RequestMethod.GET) 
	public ModelAndView main(HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object> map = getRootMap();
		Map<String,String> params = Maps.newHashMap();
		params.put("hot","1");
		String tsCoverPath = FilePros.httptsCoverPath();
		List<TravelItem> hots = travelItemService.searchTravelItem(map);
		List<RouteTemplateVo> hotrtVos = Lists.newArrayList();//
		for(TravelItem ti:hots){			
			List<RouteTemplateVo> vos = routeTemplateService.queryByItems(ti.getId());
			if(vos != null && vos.size() >= Constants.hotview){
				hotrtVos.addAll(vos);
				break;
			}
			for(RouteTemplateVo rt:vos){
				if(!hotrtVos.contains(rt)){
					if(hotrtVos.size() >= Constants.hotview){
						break;
					}
					hotrtVos.add(rt);
				}	
			}
		}
		if(hotrtVos.size() >= Constants.hotview){
			hotrtVos = hotrtVos.subList(0, Constants.hotview);
		}
		Map<String,List<RouteTemplateVo>> mapvo = Maps.newHashMap();
		Iterator<String> it = Constants.HOTTYLES.keySet().iterator();
		while(it.hasNext()){
			String style = it.next();
			TravelStyle ts = travelStyleService.queryByAlias(style);
			if(StringUtils.isNotEmpty(ts.getAlias())){
				List<RouteTemplateVo> ttvo = routeTemplateService.queryByStyle(ts.getAlias());
				List<RouteTemplateVo> newvos = Lists.newArrayList();
				if(ttvo != null && ttvo.size() >= 1){
					for(int i=0;i<Math.min(Constants.routesperrow,ttvo.size());i++){
						RouteTemplateVo rtvo = ttvo.get(i);
						rtvo.setTravelStyleAlias(ts.getAlias());
						newvos.add(rtvo);
					}
				}
				ts.setCover(tsCoverPath+"/"+PinYinUtil.getPinYin(ts.getType())+"_"+ts.getAlias()+"/"+ts.getCover());
				mapvo.put(ts.getType()+"#"+ts.getDescrip()+"#"+ts.getCover(),newvos);
			}
		}
		 ShowHappyVo pagevo = new ShowHappyVo();
		 pagevo.setPage(1);
		 BasePage<Map<String, Object>> page = showHappyService.pagedQuery(pagevo);
		 if(page.getRecords() != null && page.getRecords().size() >=1){
		 	map.put("showhappy", page.getRecords().get(0));
		 };
		map.put("hotrtVos", hotrtVos);
		map.put("mapvo",mapvo);
		return forward("index",map); 
	}
	@RequestMapping(value="/video",method = RequestMethod.GET) 
	public ModelAndView video(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		return forward("front/video");
	}
	@RequestMapping(value="/mobileIndex",method = RequestMethod.GET) 
	public ModelAndView mobileIndex(HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object> map = getRootMap();
		Map<String,String> params = Maps.newHashMap();
		params.put("hot","1");
		List<TravelItem> hots = travelItemService.searchTravelItem(map);
		List<RouteTemplateVo> hotrtVos = Lists.newArrayList();//
		for(TravelItem ti:hots){			
			List<RouteTemplateVo> vos = routeTemplateService.queryByItems(ti.getId());
			if(vos != null && vos.size() >= Constants.hotview){
				hotrtVos.addAll(vos);
				break;
			}
			for(RouteTemplateVo rt:vos){
				if(!hotrtVos.contains(rt)){
					if(hotrtVos.size() >= Constants.hotview){
						break;
					}
					hotrtVos.add(rt);
				}	
			}
		}
		if(hotrtVos.size() >= Constants.hotview){
			hotrtVos = hotrtVos.subList(0, Constants.hotview);
		}
		Map<String,List<RouteTemplateVo>> mapvo = Maps.newHashMap();
		Iterator<String> it = Constants.HOTTYLES.keySet().iterator();
		while(it.hasNext()){
			String style = it.next();
			TravelStyle ts = travelStyleService.queryByAlias(style);
			if(StringUtils.isNotEmpty(ts.getAlias())){
				List<RouteTemplateVo> ttvo =  routeTemplateService.queryByStyle(ts.getAlias());
				List<RouteTemplateVo> newvos = Lists.newArrayList();
				if(ttvo != null && ttvo.size() >= 1){
					for(int i=0;i<Math.min(Constants.routesperrow,ttvo.size());i++){
						RouteTemplateVo rtvo = ttvo.get(i);
						rtvo.setTravelStyleAlias(ts.getAlias());
						newvos.add(rtvo);
					}
				}
				mapvo.put(ts.getType()+"_"+ts.getDescrip(),newvos);
			}
		}
		 ShowHappyVo pagevo = new ShowHappyVo();
		 pagevo.setPage(1);
		 BasePage<Map<String, Object>> page = showHappyService.pagedQuery(pagevo);
		 if(page.getRecords() != null && page.getRecords().size() >=1){
		 	map.put("showhappy", page.getRecords().get(0));
		 };
		map.put("hotrtVos", hotrtVos);
		map.put("mapvo",mapvo);
		return forward("mobileIndex",map);
	}
	/**
	 * 
	 * @param travelStyle
	 * @param rcdDays
	 * @param scopeAlias
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/search",method = RequestMethod.POST) 
	public ModelAndView searchRt(@RequestParam("travel_style") String travelStyle,@RequestParam("vacation")String rcdDays,@RequestParam("areas")String scopeAlias,HttpServletRequest request,HttpServletResponse response) throws Exception{
		return forward("front/search");
	}
	/**
	 * 
	 * @param travelStyle
	 * @param rcdDays
	 * @param scopeAlias
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value="/searchRtResult",method = RequestMethod.POST) 
	public String searchRtResult(String pageNo,@RequestParam("travel_style") String travelStyle,@RequestParam("vacation")String rcdDays,@RequestParam("level1Area")String level1Area,@RequestParam("level2Area")String level2Area,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object>  map = getRootMap();
		RouteTemplateVo vo = new RouteTemplateVo();
		//Map<String,String> params = Maps.newHashMap();
		Map<String,String> shparams = Maps.newHashMap();
		if(StringUtils.isNotEmpty(travelStyle)){
			vo.setTravelStyle(travelStyle);
			//params.put("travelStyle", travelStyle);
		}
		if(StringUtils.isNotEmpty(level1Area)){	
			vo.setLevel1Area(level1Area);
		}
		if(StringUtils.isNotEmpty(level2Area)){	
			vo.setLevel1Area(level2Area);
		}
		if(StringUtils.isNotEmpty(rcdDays)){
			if(rcdDays.indexOf('-')>0){
				vo.setRcdDays1(Integer.parseInt(rcdDays.split("-")[0]));
				vo.setRcdDays2(Integer.parseInt(rcdDays.split("-")[1]));
				//params.put("rcdDays1", rcdDays.split("-")[0]);
				//params.put("rcdDays2", rcdDays.split("-")[1]);
			}else{
				//params.put("rcdDays", rcdDays);
				vo.setRcdDays(Integer.parseInt(rcdDays));
			}
		}
		vo.setPage(Long.parseLong(pageNo));
		vo.setRows(Constants.happyperPage);
		vo.setLimit(Constants.happyperPage);
		//String physicalPath = FilePros.physicalPath();
		//List<RouteTemplateVo> searchRts = routeTemplateService.searchRts(params);
		BasePage<Map<String, Object>> page = routeTemplateService.searchpagedQuery(vo);
		page.setPage(Long.parseLong(pageNo));
		Pager pager = page.getPager();
		pager.setPageId(Long.parseLong(pageNo));
		pager.setPageSize(Constants.happyperPage);
		pager.setRowCount(page.getTotal());
		page.setPager(pager);
		map.put("result", page);
		ShowHappyVo pagevo = new ShowHappyVo();
	    pagevo.setPage(1);
	    BasePage<Map<String, Object>> shpage = showHappyService.pagedQuery(pagevo);
		if(shpage.getRecords() != null && shpage.getRecords().size() >=1){
		 	map.put("showhappy", shpage.getRecords().get(0));
		};
	 	shparams.put("hot","1");
		List<TravelItem> hots = travelItemService.searchTravelItem(shparams);
		List<RouteTemplateVo> hotrtVos = Lists.newArrayList();//
		for(TravelItem ti:hots){			
			List<RouteTemplateVo> vos = routeTemplateService.queryByItems(ti.getId());
			if(vos != null && vos.size() >= Constants.hotview){
				hotrtVos.addAll(vos);
				break;
			}
			for(RouteTemplateVo rt:vos){
				if(!hotrtVos.contains(rt)){
					if(hotrtVos.size() >= Constants.hotview){
						break;
					}
					hotrtVos.add(rt);
				}	
			}
		}
		if(hotrtVos.size() >= Constants.hotview){
			hotrtVos = hotrtVos.subList(0, Constants.hotview);
		}
		map.put("hotrtVos", hotrtVos);
		//map.put("searchRts", searchRts);
		return JsonUtils.encode(map); 
	}
}
