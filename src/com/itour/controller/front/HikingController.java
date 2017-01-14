package com.itour.controller.front;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.util.FilePros;
import com.itour.base.web.BaseController;
import com.itour.entity.TravelItem;
import com.itour.service.CustomersService;
import com.itour.service.TravelItemService;
import com.itour.util.Constants;

@Controller
//@RestController
@RequestMapping("/hiking") 
public class HikingController extends BaseController{
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	
	@Autowired
	private DataGridAdapter dataGridAdapter;
	
	// Servrice start
	@Autowired //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private CustomersService customersService; 
	@Autowired 
	private TravelItemService<TravelItem> travelItemService; 
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@SuppressWarnings("rawtypes")
	@RequestMapping("/main") 
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
		String uploadPtopath = FilePros.uploadPtopath();
		for(TravelItem item:items){
			String photo = item.getCover();
			if(StringUtils.isNotEmpty(photo)){
				String cover =uploadPtopath +item.getItemCode()+"_"+item.getItem()+"/"+ item.getCover();//Constants.basePhoto
				item.setCover(cover);
			}
		}
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
		map.put("items", rowItems);// return "redirect:/class/list.action";
		return forward("front/trek/Trekkings",map); 
	}
	/**
	 * 
	 * @param id
	 * @param request
	 * @param response
	 * @return${alias:.*}  {key:[a-zA-Z0-9\\.]+}   @RequestParam("alias") String alias,
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value="/detail/{alias}", method = RequestMethod.GET) 
	public ModelAndView detail(@PathVariable("alias") String alias,HttpServletRequest request,HttpServletResponse response) throws Exception{
		TravelItem travelitem =travelItemService.getByAlias(alias);// travelItemService.queryById(id);// 
		//String related = travelitem.getr
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("item", travelitem);
		return forward("front/trek/trekking",map); 
	}
	
}