package com.itour.controller.front;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.web.BaseController;

@Controller("/whyus")
//@RequestMapping("/whyus")
public class WhyUsController extends BaseController {
	private final Logger log= Logger.getLogger(getClass());
	@Autowired
	private DataGridAdapter dataGridAdapter;
	@RequestMapping("/why")
	public String why(){
		return "front/whyus/Why";
	}
	
}
