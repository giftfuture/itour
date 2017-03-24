package com.itour.controller.front;

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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfig;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.itour.base.page.BasePage;
import com.itour.base.util.FilePros;
import com.itour.base.web.BaseController;
import com.itour.entity.TravelItem;
import com.itour.entity.TravelStyle;
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
		Map<String,Object>  map = getRootMap();
		Map<String,String> params = Maps.newHashMap();
		params.put("hot","1");
		List<TravelItem> hots = travelItemService.searchTravelItem(map);
		//List<String> hotIds = Lists.newArrayList();
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
		Map<String,RouteTemplateVo> mapvo = Maps.newHashMap();
		Iterator<String> it = Constants.HOTTYLES.keySet().iterator();
		while(it.hasNext()){
			String style = it.next();
			TravelStyle ts = travelStyleService.queryByAlias(style);
			if(StringUtils.isNotEmpty(ts.getAlias())){
				List<RouteTemplateVo> ttvo =  routeTemplateService.queryByStyle(ts.getAlias());
				if(ttvo != null && ttvo.size() >= 1){
					RouteTemplateVo bean = ttvo.get(0);
					bean.setTravelStyleAlias(ts.getAlias());
					mapvo.put(ts.getType(),bean);
				}
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
		@SuppressWarnings("unchecked")
	@RequestMapping(value="/search",method = RequestMethod.GET) 
	public ModelAndView search(HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object>  map = getRootMap();
		Map<String,String> params = Maps.newHashMap();
		String physicalPath = FilePros.physicalPath();
		params.put("hot","1");
		List<TravelItem> hots = travelItemService.searchTravelItem(map);
		//List<String> hotIds = Lists.newArrayList();
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
					//String parpath = physicalPath+t.getItemCode().replaceAll(" ", "")+"_"+rt.getItem().replaceAll(" ", "");
					hotrtVos.add(rt);
				}	
			}
		}
		Map<String,RouteTemplateVo> mapvo = Maps.newHashMap();
		Iterator<String> it = Constants.HOTTYLES.keySet().iterator();
		while(it.hasNext()){
			String style = it.next();
			TravelStyle ts = travelStyleService.queryByAlias(style);
			if(StringUtils.isNotEmpty(ts.getAlias())){
				List<RouteTemplateVo> ttvo =  routeTemplateService.queryByStyle(ts.getAlias());
				if(ttvo != null && ttvo.size() >= 1){
					mapvo.put(ts.getType(),ttvo.get(0));
				}
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
}
