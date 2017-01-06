package com.itour.controller.front;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.web.BaseController;
import com.itour.controller.CustomersController;
import com.itour.entity.Customers;
import com.itour.service.CustomersService;
import com.itour.vo.CustomerVo;

@Controller
@RequestMapping("/climb") 
public class ClimbController  extends BaseController{
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	@Autowired
	private DataGridAdapter dataGridAdapter;
	
	// Servrice start
	@Autowired
	private CustomersService customersService; 
	@RequestMapping("/main") 
	public ModelAndView main(CustomerVo vo,HttpServletRequest request) throws Exception{
	/*	Map<String,Object>  context = getRootMap();
		//page.setDeleted(DELETED.NO.key);
		List<Customers> dataList = customersService.queryByList(page);
		//设置页面数据
		context.put("dataList", dataList);*/
		return forward("front/climb/climb"); 
	}
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/list") 
	public ModelAndView list(CustomerVo vo,HttpServletRequest request) throws Exception{
	/*	Map<String,Object>  context = getRootMap();
		//page.setDeleted(DELETED.NO.key);
		List<Customers> dataList = customersService.queryByList(page);
		//设置页面数据
		context.put("dataList", dataList);*/
		return forward("server/sys/customers"); 
	}
	
}
