package com.itour.controller;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@Scope("prototype")
public class ExampleController {
	private int singletonInt=1;
    @RequestMapping(value = "/test")
    @ResponseBody
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
    @RequestMapping(value = "/sleepdata")
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
    @RequestMapping("/show")
    public String toShow(ModelMap model) {
        Map user = new HashMap();
        user.put("userName","testuname");
        user.put("age","23");
        model.put("user", user);
        return user.toString();
    }
    @RequestMapping("/plus")
    public String plus() {
    	Vector vt = null;
    	LinkedList ll = null;
        System.out.println(st++ + " | " + index++);
        return "";
    }
}
