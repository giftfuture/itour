package com.itour.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.web.BaseController;
import com.itour.base.util.HtmlUtil;
import com.itour.base.annotation.Auth;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.easyui.EasyUIGrid;
import com.itour.base.entity.BaseEntity.DELETED;
import com.itour.base.page.BasePage;
import com.itour.entity.LogSettingDetail;
import com.itour.entity.OrderDetail;
import com.itour.vo.OrderDetailVo;
import com.itour.vo.RouteTemplateVo;
import com.itour.service.OrderDetailService;
 
/**
 * 
 * <br>
 * <b>功能：</b>OrderDetailController<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */ 
@Controller
@RequestMapping("/orderDetail") 
public class OrderDetailController extends BaseController{
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	
	// Servrice start
	@Autowired //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private OrderDetailService<OrderDetail> orderDetailService; 
	
	@Autowired
	private DataGridAdapter dataGridAdapter;
	
	
	
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@RequestMapping(value="/list") 
	public ModelAndView  list(OrderDetailVo page,HttpServletRequest request) throws Exception{
		//Map<String,Object>  context = getRootMap();
		//List<OrderDetail> dataList = orderDetailService.queryByList(page);
		//设置页面数据
	//	context.put("dataList", dataList);
		return forward("server/sys/orderDetail"); 
	}
	
	
	/**
	 * @param url
	 * @param classifyId
	 * @return 
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/dataList.json", method = RequestMethod.POST) 
	public EasyUIGrid  datalist(OrderDetailVo vo,HttpServletResponse response) throws Exception{
		//List<OrderDetail> dataList = orderDetailService.queryByList(page);
		BasePage<OrderDetailVo> page = orderDetailService.pagedQuery(vo);
		return dataGridAdapter.wrap(page);
	}
	
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public void save(OrderDetail entity,Integer[] typeIds,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap<String,Object>();
		if(entity.getId()==null||StringUtils.isBlank(entity.getId().toString())){
			orderDetailService.add(entity);
		}else{
			OrderDetail od = orderDetailService.queryById(entity.getId());
			if(od == null)
				orderDetailService.add(entity);
			else
				orderDetailService.update(entity);
		}
		sendSuccessMessage(response, "保存成功~");
	}
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/getId", method = RequestMethod.POST)
	public Map<String,Object> getId(String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap();
		OrderDetail entity  = orderDetailService.queryById(id);
		if(entity  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return new HashMap<String,Object>();
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		return context;
	}
	
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		orderDetailService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}

}
