package com.itour.base.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

import org.json.JSONException;

import com.itour.base.util.json.JSONUtil;

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
	public static void writerJson(HttpServletResponse response,Object object){
			try {
				response.setContentType("application/json");
				String result = JSONUtil.toJSONString(object);
				// result = result == null ||result == "{\"msg\":\"1\",\"success\":true}" || result =="{\"total\":1,\"rows\":[{}]}"|| result.equals("{success=true, allType=true}") || result.equals("{}") ||result.length()<3 ? net.sf.json.JSONObject.fromObject(object).toString() :result ;
				writer(response,result);
			} catch (JSONException e) {
				e.printStackTrace();
			}
	}
	/**
	 * net.sf.json write
	 * @param response
	 * @param object
	 */
	public static void writerJSON(HttpServletResponse response,Object object){
			response.setContentType("application/json");
			  JsonConfig jsonConfig = new JsonConfig();
		        jsonConfig.registerJsonValueProcessor(Date.class,
		                new JsonValueProcessor() {
		                    /**
		                     * paramString -> 参数名 paramObject -> 参数值
		                     */
		                    @Override
		                    public Object processObjectValue(String paramString,
		                            Object paramObject, JsonConfig paramJsonConfig) {
		                        if (paramObject == null) {
		                            return null;
		                        }
		                        String ret = null;
		                        try {
		                            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		                            ret = format.format((Date)paramObject);
		                        } catch (Exception e) {
		                            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		                            ret = format.format((Date) paramObject);
		                        }
		                        return ret;
		                    }
		 
		                    @Override
		                    public Object processArrayValue(Object paramObject,JsonConfig paramJsonConfig) {
		                        return null;
		                    }
		                });
		//	net.sf.json.JSONObject.fromObject(object, jsonConfig);
			net.sf.json.JSONObject jo =	net.sf.json.JSONObject.fromObject(object,jsonConfig) ;
			//jo.put("updateTime", jo.get("updateTime"));
			//jo.put("createTime", value)
			String result = jo.toString();
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
	
	private static void writer(HttpServletResponse response,String str){
		try {
			StringBuffer result = new StringBuffer();
			//设置页面不缓存
			response.setHeader("Pragma", "No-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out= null;
			out = response.getWriter();
			out.print(str);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	} 
}
