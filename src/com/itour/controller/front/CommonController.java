package com.itour.controller.front;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itour.base.util.HtmlUtil;
import com.itour.controller.TravelStyleController;
import com.itour.entity.TravelStyle;
import com.itour.page.TravelStylePage;
import com.itour.service.TravelStyleService;

@Controller
@RequestMapping("/common") 
public class CommonController {

	private final static Logger log= Logger.getLogger(CommonController.class);
	
	// Servrice start
	@Autowired(required=false) //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private TravelStyleService<TravelStyle> travelStyleService; 
	/**
	 * 
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/styles") 
	public void allData(HttpServletResponse response,TravelStylePage page)throws Exception{
		List<TravelStyle> dataList = travelStyleService.queryValid();
		Map<String,Object> jsonMap = new HashMap<String,Object>();
		jsonMap.put("rows", dataList);
		HtmlUtil.writerJson(response, jsonMap);
	}
}
