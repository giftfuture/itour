package com.itour.controller;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itour.base.easyui.DataGridAdapter;

@Controller
@Scope("prototype")
public class ExampleController {
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	private int singletonInt=1;
	@Autowired
	private DataGridAdapter dataGridAdapter;
	
	@ResponseBody
    @RequestMapping(value = "/test", method = RequestMethod.POST)
    public String singleton(HttpServletRequest request,HttpServletResponse response) throws Exception {
        String data=request.getParameter("data");
        if(data!=null&&data.length()>0){
            try{
             int paramInt= Integer.parseInt(data);
            singletonInt = singletonInt + paramInt;
            }
            catch(Exception ex){
                singletonInt+=10;
            }
        }else{
            singletonInt+=1000;
        }
       	System.out.println(singletonInt);
        return String.valueOf(singletonInt);
   }
    @RequestMapping(value = "/sleepdata", method = RequestMethod.POST)
    @ResponseBody
    public String switcher(HttpServletRequest request
         , HttpServletResponse response)
               throws Exception {
      String sleep = request.getParameter("sleep");
      if (sleep.equals("on")) {
          Thread.currentThread().sleep(5000);
          System.out.println("on");
           return "sleep on";
       } else {
    	  System.out.println("fff");
           return sleep;
      }
    }
    
    private static int st = 0;      //静态的
    private int index = 0;          //非静态
    
    @ResponseBody
    @RequestMapping(value="/show", method = RequestMethod.POST)
    public String toShow(ModelMap model) {
        Map user = new HashMap();
        user.put("userName","testuname");
        user.put("age","23");
        model.put("user", user);
        return user.toString();
    }
    /**
     * 
     * @return
     */
    @RequestMapping("/plus")
    public String plus() {
    	Vector vt = null;
    	LinkedList ll = null;
        System.out.println(st++ + " | " + index++);
        return "";
    }
}
