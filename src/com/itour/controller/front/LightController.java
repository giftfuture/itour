package com.itour.controller.front;

import java.util.Arrays;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfig;

import com.google.common.collect.Lists;
import com.itour.base.annotation.Auth;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.json.JsonUtils;
import com.itour.base.util.FilePros;
import com.itour.base.util.SessionUtils;
import com.itour.base.web.BaseController;
import com.itour.entity.LogOperation;
import com.itour.entity.LogSetting;
import com.itour.entity.QuoteForm;
import com.itour.entity.SysUser;
import com.itour.entity.TravelItem;
import com.itour.entity.TravelStyle;
import com.itour.service.LogOperationService;
import com.itour.service.LogSettingDetailService;
import com.itour.service.LogSettingService;
import com.itour.service.QuoteFormService;
import com.itour.service.RouteTemplateService;
import com.itour.service.TravelItemService;
import com.itour.service.TravelStyleService;
import com.itour.servlet.FreeMarkerUtil;
import com.itour.util.Constants;
import com.itour.vo.CalculateQuoteVo;
import com.itour.vo.CustomerVo;
import com.itour.vo.QuoteFormVo;
import com.itour.vo.RouteTemplateVo;

@Controller
@RequestMapping("/light") 
public class LightController extends BaseController{
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	@Autowired
	private DataGridAdapter dataGridAdapter;
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
	@RequestMapping("/main") 
	public ModelAndView main(CustomerVo vo,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object>  map = getRootMap();
		//map.put("alias", Constants.HIKING);
		List<RouteTemplateVo> rtvos = routeTemplateService.queryByStyle(Constants.LIGHT);
		String uploadPtopath = FilePros.itemCoverpath();
		for(RouteTemplateVo rt:rtvos){
			String itemIds = StringUtils.isNotEmpty(rt.getTravelItems())?rt.getTravelItems():"";
			List<String> itids = Arrays.asList(itemIds.split(","));
			List<TravelItem> items = travelItemService.queryByIds(itids);
			rt.setCover(uploadPtopath+(StringUtils.isNotEmpty(rt.getCover())?rt.getCover():(items!=null && items.size()>0?items.get(0).getItemCode()+"_"+items.get(0).getAlias()+"/"+items.get(0).getCover():"")));
		}
		int rows = rtvos.size()%Constants.perRow > 0 ? rtvos.size()/Constants.perRow+1:rtvos.size()/Constants.perRow;
		map.clear();
		map.put("count", rtvos.size());
		map.put("perRow", Constants.perRow);
		map.put("rows", rows);
		Map<Integer,List<RouteTemplateVo>> rts = new HashMap<Integer,List<RouteTemplateVo>>();
		for(int i=0;i<rows;i++){
			int end = Constants.perRow*(i+1)>rtvos.size() ? rtvos.size() : Constants.perRow*(i+1);
			rts.put(i,rtvos.subList(Constants.perRow*i, end));
		}
		map.put("rts", rts);
		return forward("front/light/main",map); 
	}
	/**
	 * 
	 * @param alias
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value="/light/{alias}", method = RequestMethod.GET) 
	public ModelAndView hiking(@PathVariable("alias")String alias,HttpServletRequest request,HttpServletResponse response) throws Exception{
		RouteTemplateVo rt = routeTemplateService.queryByAlias(alias);
		TravelStyle style = (TravelStyle)travelStyleService.queryById(rt.getTravelStyle());
		rt.setTravelStyle(style.getType());
		String mappath = FilePros.uploadMappath();
		String coverpath = FilePros.uploadCoverpath();
		if(rt != null && StringUtils.isNotEmpty(rt.getRouteMap())){
			rt.setRouteMap(mappath+rt.getRouteMap());
		}
		if(rt != null && StringUtils.isNotEmpty(rt.getCover())){
			rt.setCover(coverpath+rt.getCover());
		}
		if(rt != null && StringUtils.isNotEmpty(rt.getRelated())){
			String [] ids =  rt.getRelated().split(",");
			List<RouteTemplateVo> relates = routeTemplateService.queryByRelated(Arrays.asList(ids));
			for(RouteTemplateVo rtp:relates){
				TravelStyle ts = (TravelStyle)travelStyleService.queryById(rtp.getTravelStyle());
				if(ts != null){
					rtp.setTravelStyleAlias(ts.getAlias());
				}
			}
			 rt.setRelates(relates);
		}
		QuoteFormVo qf = quoteFormService.queryByRtId(rt.getId());
	/*	String beriefTrip = qf.getBeriefTrip().replaceAll("\"", "'");//ExecuteScript.exeScript("beriefTrip",qf.getBeriefTrip().replaceAll("\"", "'"),request);
		rt.setBeriefTrip(beriefTrip);
		String ftlName = "";
		Boolean flag =(Boolean)FreeMarkerUtil.htmlFileHasExist(request, Constants.FREEMARKER_PATH, ftlName).get("exist");
        if(!flag){//如何静态文件不存在，重新生成
            Map<String,Object> map = getRootMap();
            map.put("beriefTrip", beriefTrip);//这里包含业务逻辑请求等
          //  mv.addAllAttributes(map);
            FreeMarkerUtil.createHtml(freeMarkerConfig, "beriefTrip.ftl", request, map, Constants.FREEMARKER_PATH, ftlName);//根据模板生成静态页面
        }*/
		String itemIds = StringUtils.isNotEmpty(rt.getTravelItems())?rt.getTravelItems():"";
		List<String> itids = Arrays.asList(itemIds.split(","));
		List<TravelItem> items = travelItemService.queryByIds(itids);
		String ptopath = FilePros.itemCoverpath();
		List<String> photoList = Lists.newArrayList();
		StringBuffer routeLine = new StringBuffer(rt.getDeparture());
		for(TravelItem ti:items){
			String cover = ti.getCover();
			if(StringUtils.isNotEmpty(cover)){
				String realCover = ptopath +ti.getItemCode()+"_"+ti.getAlias()+"/"+ ti.getCover();//Constants.basePhoto
				ti.setCover(realCover);
			}
			String photos = ti.getPhotos();
			if(StringUtils.isNotEmpty(photos)){
				List<String> array = Arrays.asList(photos.split("\\|"));
				for(String name:array){
					String realname = ptopath +ti.getItemCode()+"_"+ti.getAlias()+"/"+ name;//Constants.basePhoto
					photoList.add(realname);
				}
			}
			routeLine.append("-"+ti.getItem());
		}
		routeLine.append("-"+rt.getArrive());
		rt.setRouteLine(routeLine.toString());
		rt.setPhotoList(photoList);
		float adultquote = Float.parseFloat(qf.getShowTicket().split("\\|")[0])+Float.parseFloat(qf.getShowTourguide().split("\\|")[0])+
				Float.parseFloat(qf.getShowHotel().split("\\|")[0])+Float.parseFloat(qf.getShowRentcar().split("\\|")[0])+Float.parseFloat(qf.getShowDinner().split("\\|")[0])+
				Float.parseFloat(qf.getShowInsurance().split("\\|")[0])+Float.parseFloat(qf.getShowComphcost().split("\\|")[0])+Float.parseFloat(qf.getShowRecreation().split("\\|")[0]);
		float childquote = Float.parseFloat(qf.getShowTicket().split("\\|")[0])+Float.parseFloat(qf.getShowTourguide().split("\\|")[0])+
				Float.parseFloat(qf.getShowHotel().split("\\|")[0])+Float.parseFloat(qf.getShowRentcar().split("\\|")[0])+Float.parseFloat(qf.getShowDinner().split("\\|")[0])+
				Float.parseFloat(qf.getShowInsurance().split("\\|")[0])+Float.parseFloat(qf.getShowComphcost().split("\\|")[0])+Float.parseFloat(qf.getShowRecreation().split("\\|")[0]);
		qf.setAdultsQuote(adultquote);
		qf.setChildquote(childquote);
		Map<String,Object> map = getRootMap();
		map.put("items", items);
		map.put("rt", rt);
		map.put("qf", qf);
		map.put("alias", alias);
		return forward("front/light/detail",map); 
	}
	/**
	 * 
	 * @param id
	 * @param request
	 * @param response
	 * @return${alias:.*}  {key:[a-zA-Z0-9\\.]+} 
	 * @RequestParam("alias") String alias,
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value="/detail/{alias}", method = RequestMethod.GET) 
	public ModelAndView detail(@PathVariable("alias") String alias,HttpServletRequest request,HttpServletResponse response) throws Exception{
		RouteTemplateVo rt = routeTemplateService.queryByAlias(alias);
		String mappath = FilePros.uploadMappath();
		String coverpath = FilePros.uploadCoverpath();
		if(rt != null && StringUtils.isNotEmpty(rt.getRouteMap())){
			rt.setRouteMap(mappath+rt.getRouteMap());
		}
		if(rt != null && StringUtils.isNotEmpty(rt.getCover())){
			rt.setCover(coverpath+rt.getCover());
		}
		if(rt != null && StringUtils.isNotEmpty(rt.getRelated())){
			String [] ids =  rt.getRelated().split(",");
			List<RouteTemplateVo> relates = routeTemplateService.queryByRelated(Arrays.asList(ids));
			for(RouteTemplateVo rtp:relates){
				TravelStyle ts = (TravelStyle)travelStyleService.queryById(rtp.getTravelStyle());
				if(ts != null){
					rtp.setTravelStyleAlias(ts.getAlias());
				}
			}
			 rt.setRelates(relates);
		}
		String itemIds = StringUtils.isNotEmpty(rt.getTravelItems())?rt.getTravelItems():"";
		List<String> itids = Arrays.asList(itemIds.split(","));
		List<TravelItem> items = travelItemService.queryByIds(itids);
		String ptopath = FilePros.itemCoverpath();
		for(TravelItem ti:items){
			String photo = ti.getCover();
			if(StringUtils.isNotEmpty(photo)){
				String cover = ptopath +ti.getItemCode()+"_"+ti.getAlias()+"/"+ ti.getCover();//Constants.basePhoto
				ti.setCover(cover);
			}
		}
		Map<String,Object> map =getRootMap();
		map.put("items", items);
		map.put("rt", rt);
		return forward("front/light/detail",map); 
	}
	/**
	 * 
	 * @param alias
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/selfbooking/{alias}",method = RequestMethod.GET) 
	@ResponseBody
	public ModelAndView selfbooking(@PathVariable("alias") String alias,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object> map = getRootMap();
		RouteTemplateVo rt = routeTemplateService.queryByAlias(alias);
		String mappath = FilePros.uploadMappath();
		String coverpath = FilePros.uploadCoverpath();
		if(rt != null && StringUtils.isNotEmpty(rt.getRouteMap())){
			rt.setRouteMap(mappath+rt.getRouteMap());
		}
		if(rt != null && StringUtils.isNotEmpty(rt.getCover())){
			rt.setCover(coverpath+rt.getCover());
		}
		if(rt != null && StringUtils.isNotEmpty(rt.getRelated())){
			String [] ids =  rt.getRelated().split(",");
			List<RouteTemplateVo> relates = routeTemplateService.queryByRelated(Arrays.asList(ids));
			for(RouteTemplateVo rtp:relates){
				TravelStyle ts = (TravelStyle)travelStyleService.queryById(rtp.getTravelStyle());
				if(ts != null){
					rtp.setTravelStyleAlias(ts.getAlias());
				}
			}
			 rt.setRelates(relates);
		}
		String itemIds = StringUtils.isNotEmpty(rt.getTravelItems())?rt.getTravelItems():"";
		List<String> itids = Arrays.asList(itemIds.split(","));
		List<TravelItem> items = travelItemService.queryByIds(itids);
		String ptopath = FilePros.itemCoverpath();
		for(TravelItem ti:items){
			String photo = ti.getCover();
			if(StringUtils.isNotEmpty(photo)){
				String cover = ptopath +ti.getItemCode()+"_"+ti.getAlias()+"/"+ ti.getCover();//Constants.basePhoto
				ti.setCover(cover);
			}
		}
		map.put("items", items);
		map.put("rt", rt);
		return forward("front/light/selfbooking",map); 
	}
	/**
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/toQuote1",method = RequestMethod.GET) 
	@ResponseBody
	public ModelAndView toQuote1(HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = getRootMap();
		//context.put("items", items);
		//context.put("rt", rt);
		return forward("front/light/quote_step1",context); 
	}
	/**
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/toQuote2/{alias}",method = RequestMethod.GET) 
	@ResponseBody
	public ModelAndView toQuote2(@PathVariable("alias") String alias,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = getRootMap();
		RouteTemplateVo bean = routeTemplateService.queryByAlias(alias);
		//RouteTemplateVo bean  = routeTemplateService.selectById(id);
		if(bean == null){
			context.put(SUCCESS, false);
			context.put("bean", "没有找到对应的记录!");
			return forward(request.getHeader("Referer"),context);
		}
		QuoteFormVo qf = quoteFormService.queryByRtId(bean.getId());
		context.put(SUCCESS, true);
		context.put("bean", bean);
		context.put("qf", qf);
		return forward("front/light/quote_step2",context); 
	}
	
	/**
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@Auth(verifyLogin=false,verifyURL=false)
	@ResponseBody
	@RequestMapping(value="/calculateSum", method = RequestMethod.POST)
	public String calculateSum(@RequestBody CalculateQuoteVo vo,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Float adultsumcost =0f;
		Float childrensumcost =0f;
		if(vo !=null && StringUtils.isNotEmpty(vo.getId())){//&& adults !=null && children !=null
			int adults = vo.getAdults();
			int children = vo.getChildren();
			QuoteForm qf = quoteFormService.queryById(vo.getId());
			if(qf.isAsAdult()){
				adultsumcost+=qf.getAdults()*adults;
				childrensumcost+=qf.getAdults()*children;
			}else{
				adultsumcost+=qf.getAdults()*adults;
				childrensumcost+=qf.getChildren()*children;
			}
			adultsumcost+=Float.parseFloat(qf.getShowTicket().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowTraveldoc().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowTourguide().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowHotel().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowRentcar().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowBigtraffic().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowDinner().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowInsurance().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowComphcost().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowRecreation().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowItemguide().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowBathorse().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowRidehorse().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowClimbregister().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowClimbnexus().split("\\|")[0])*adults;
			adultsumcost+=Float.parseFloat(qf.getShowElsecost().split("\\|")[0])*adults;
			
			childrensumcost+=Float.parseFloat(qf.getShowTicket().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowTraveldoc().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowTourguide().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowHotel().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowRentcar().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowBigtraffic().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowDinner().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowInsurance().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowComphcost().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowRecreation().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowItemguide().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowBathorse().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowRidehorse().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowClimbregister().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowClimbnexus().split("\\|")[0])*children;
			childrensumcost+=Float.parseFloat(qf.getShowElsecost().split("\\|")[0])*children;
		}
		Map<String,String> map = getHashMap();
		map.put("adultsumcost", adultsumcost+"");
		map.put("childrensumcost", childrensumcost+"");
		return JsonUtils.encode(map);
	}
	/**
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/toQuote3",method = RequestMethod.GET) 
	@ResponseBody
	public ModelAndView toQuote3(HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = getRootMap();
		//context.put("items", items);
		//context.put("rt", rt);
		return forward("front/light/quote_step3",context); 
	}
	/**
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/toQuote4",method = RequestMethod.GET) 
	@ResponseBody
	public ModelAndView toQuote4(HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = getRootMap();
		//context.put("items", items);
		//context.put("rt", rt);
		return forward("front/light/quote_step4",context); 
	}
	
}
