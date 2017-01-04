package com.itour.controller.front;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.web.BaseController;

@Controller("/whyus")
//@RequestMapping("/whyus")
public class WhyUsController extends BaseController {
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	@Autowired
	private DataGridAdapter dataGridAdapter;
	@RequestMapping(value="/why")
	public String why(){
		return "front/whyus/why";
	}
	
}
