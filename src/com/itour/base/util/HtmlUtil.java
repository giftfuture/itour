package com.itour.base.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import com.itour.base.json.JsonUtils;

/**
 * <br>
 * <b>功能：</b>详细的功能描述<br>
 * <b>日期：</b> Jun 14, 2016 <br>
 * <b>更新者：</b><br>
 * <b>日期：</b> <br>
 * <b>更新内容：</b><br>
 */
public class HtmlUtil {
	
	/**
	 * 
	 * <br>
	 * <b>功能：</b>输出json格式<br>
	 * <b>作者：</b>fred<br>
	 * <b>日期：</b> Jun 14, 2016 <br>
	 * @param response
	 * @param jsonStr
	 * @throws Exception
	 */
	public static void writerJson(HttpServletResponse response,String jsonStr) {
			writer(response,jsonStr);
	}
	/**
	 * fastjson write
	 * @param response
	 * @param object
	 */
	public static void writerJson2(HttpServletResponse response,Object object){
		response.setContentType("application/json");
		String result = JsonUtils.encode(object);
		// result = result == null ||result == "{\"msg\":\"1\",\"success\":true}" || result =="{\"total\":1,\"rows\":[{}]}"|| result.equals("{success=true, allType=true}") || result.equals("{}") ||result.length()<3 ? net.sf.json.JSONObject.fromObject(object).toString() :result ;
		writer(response,result);
	}
	/**
	 * fastjson write
	 * @param response
	 * @param object
	 */
	public static void writerJson(HttpServletResponse response,Object object){
		//response.setContentType("application/json");
		response.setContentType("text/html;charset=UTF-8");
		String result = JsonUtils.encode(object);
		// result = result == null ||result == "{\"msg\":\"1\",\"success\":true}" || result =="{\"total\":1,\"rows\":[{}]}"|| result.equals("{success=true, allType=true}") || result.equals("{}") ||result.length()<3 ? net.sf.json.JSONObject.fromObject(object).toString() :result ;
		writer(response,result);
	}
	/**
	 * 
	 * <br>
	 * <b>功能：</b>输出HTML代码<br>
	 * <b>日期：</b> Jun 14, 2016 <br>
	 * @param response
	 * @param htmlStr
	 * @throws Exception
	 */
	public static void writerHtml(HttpServletResponse response,String htmlStr) {
		writer(response,htmlStr);
	}
	/**
	 * 
	 * @param response
	 * @param str
	 */
	private static void writer(HttpServletResponse response,String str){
		try {
			//StringBuffer result = new StringBuffer();
			//设置页面不缓存
			response.setHeader("Pragma", "No-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out= null;
			out = response.getWriter();
			//System.out.println(str);
			out.print(str);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	} 
}
