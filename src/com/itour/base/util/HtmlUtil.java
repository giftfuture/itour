package com.itour.base.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

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
	
	private final static String regxpForHtml = "<([^>]*)>"; // 过滤所有以<开头以>结尾的标签   
	
	private final static String regxpForImgTag = "<\\s*img\\s+([^>]*)\\s*>"; // 找出IMG标签   
	
	private final static String regxpForImaTagSrcAttrib = "src=\"([^\"]+)\""; // 找出IMG标签的SRC属性   
	
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
  
    /**  
     *   
     * 基本功能：替换标记以正常显示  
     * <p>  
     *   
     * @param input  
     * @return String  
     */  
    public String replaceTag(String input) {   
        if (!hasSpecialChars(input)) {   
            return input;   
        }   
        StringBuffer filtered = new StringBuffer(input.length());   
        char c;   
        for (int i = 0; i <= input.length() - 1; i++) {   
            c = input.charAt(i);   
            switch (c) {   
            case '<':   
                filtered.append("&lt;");   
                break;   
            case '>':   
                filtered.append("&gt;");   
                break;   
            case '"':   
                filtered.append("&quot;");   
                break;   
            case '&':   
                filtered.append("&amp;");   
                break;   
            default:   
                filtered.append(c);   
            }   
  
        }   
        return (filtered.toString());   
    }   
  
    /**  
     *   
     * 基本功能：判断标记是否存在  
     * <p>  
     *   
     * @param input  
     * @return boolean  
     */  
    public boolean hasSpecialChars(String input) {   
        boolean flag = false;   
        if ((input != null) && (input.length() > 0)) {   
            char c;   
            for (int i = 0; i <= input.length() - 1; i++) {   
                c = input.charAt(i);   
                switch (c) {   
                case '>':   
                    flag = true;   
                    break;   
                case '<':   
                    flag = true;   
                    break;   
                case '"':   
                    flag = true;   
                    break;   
                case '&':   
                    flag = true;   
                    break;   
                }   
            }   
        }   
        return flag;   
    }   
  
    /**  
     *   
     * 基本功能：过滤所有以"<"开头以">"结尾的标签  
     * <p>  
     *   
     * @param str  
     * @return String  
     */  
    public static String filterHtml(String str) {   
        Pattern pattern = Pattern.compile(regxpForHtml);   
        Matcher matcher = pattern.matcher(str);   
        StringBuffer sb = new StringBuffer();   
        boolean result1 = matcher.find();   
        while (result1) {   
            matcher.appendReplacement(sb, "");   
            result1 = matcher.find();   
        }   
        matcher.appendTail(sb);   
        return sb.toString();   
    }   
  
    /**  
     *   
     * 基本功能：过滤指定标签  
     * <p>  
     *   
     * @param str  
     * @param tag  
     *            指定标签  
     * @return String  
     */  
    public static String fiterHtmlTag(String str, String tag){   
        String regxp = "<\\s*" + tag + "\\s+([^>]*)\\s*>";   
        Pattern pattern = Pattern.compile(regxp);   
        Matcher matcher = pattern.matcher(str);   
        StringBuffer sb = new StringBuffer();   
        boolean result1 = matcher.find();   
        while (result1) {   
            matcher.appendReplacement(sb, "");   
            result1 = matcher.find();   
        }   
        matcher.appendTail(sb);   
        return sb.toString();   
    }   
    /** 
     * 获取指定HTML标签的指定属性的值 
     * @param source 要匹配的源文本 
     * @param element 标签名称 
     * @param attr 标签的属性名称 
     * @return 属性值列表 
     */  
    public static List<String> inputValue(String source, String element, String attr) {  
        List<String> result = new ArrayList<String>();  
        String reg = "<" + element + "[^<>]*?\\s" + attr + "=['\"]?(.*?)['\"]?(\\s.*?)?>";  
        Matcher m = Pattern.compile(reg).matcher(source);  
        while (m.find()) {  
            String r = m.group(1);  
            result.add(r);  
        }  
        return result;  
    } 
    public static List<String> selectValue(String source, String element, String attr) {  
       List<String> result = new ArrayList<String>();  
       Matcher matcher = Pattern.compile("<param\\p{Space}+name\\p{Space}*=\\p{Space}*\"LoadDataURL\"\\p{Space}+value\\p{Space}*=\\p{Space}*\"(.* )\"").matcher(source); 
       while(matcher.find()){
    	   System.out.println(matcher.group(1)); 
       }
        return result;  
    } 
    /**  
     *   
     * 基本功能：替换指定的标签    
     * <p>  
     *   
     * @param str  
     * @param beforeTag  
     *            要替换的标签  
     * @param tagAttrib  
     *            要替换的标签属性值  
     * @param startTag  
     *            新标签开始标记  
     * @param endTag  
     *            新标签结束标记   
     * @return String  
     * @如：替换img标签的src属性值为[img]属性值[/img]  
     */  
    public static String replaceHtmlTag(String str, String beforeTag,String tagAttrib, String startTag, String endTag) {   
        String regxpForTag = "<\\s*" + beforeTag + "\\s+([^>]*)\\s*>";   
        String regxpForTagAttrib = tagAttrib + "=\"([^\"]+)\"";   
        Pattern patternForTag = Pattern.compile(regxpForTag);   
        Pattern patternForAttrib = Pattern.compile(regxpForTagAttrib);   
        Matcher matcherForTag = patternForTag.matcher(str);   
        StringBuffer sb = new StringBuffer();   
        boolean result = matcherForTag.find(); 
        sb.append("fsfsf");
        while (result){   
            StringBuffer sbreplace = new StringBuffer("dfff");   
            String group =matcherForTag.group(1);
            Matcher matcherForAttrib = patternForAttrib.matcher(group);   
            if (matcherForAttrib.find()) {   
                matcherForAttrib.appendReplacement(sbreplace, startTag + matcherForAttrib.group(1) + endTag);   
            }   
            matcherForTag.appendReplacement(sb, sbreplace.toString());   
            result = matcherForTag.find();   
        }   
        matcherForTag.appendTail(sb);   
        return sb.toString();   
    }   
    /**
     * 
     * @param str
     * @param beforeTag
     * @param startTag
     * @param endTag
     * @return
     */
    public static String replaceHtmlTag(String str, String beforeTag,String startTag, String endTag) {   
        String regxpForTag = "<\\s*" + beforeTag + "\\s+([^>]*)\\s*>";   
        Pattern patternForTag = Pattern.compile(regxpForTag);   
        Matcher matcherForTag = patternForTag.matcher(str);   
        StringBuffer sb = new StringBuffer(); 
        String result = "";   
        while(matcherForTag.find()){   
          //  StringBuffer sbreplace = new StringBuffer();   
          /*  if (matcherForAttrib.find()) {   
                matcherForAttrib.appendReplacement(sbreplace, startTag   
                        + matcherForAttrib.group(1) + endTag);   
            }   */		
            matcherForTag.appendReplacement(sb,startTag + matcherForTag.group(1) + endTag);   
            result = matcherForTag.group();   
        }   
       sb = matcherForTag.appendTail(sb);   
        return result;   
    } 
    /**
     * 去掉文本中的html标签
     *
     * @param inputString
     * @return
     */
    public static String html2Text(String inputString) {
        if (StringUtils.isEmpty(inputString)) {
            return null;
        }
        String htmlStr = inputString;
        String textStr = "";
        java.util.regex.Pattern p_script;
        java.util.regex.Matcher m_script;
        java.util.regex.Pattern p_style;
        java.util.regex.Matcher m_style;
        java.util.regex.Pattern p_html;
        java.util.regex.Matcher m_html;

        java.util.regex.Pattern p_html1;
        java.util.regex.Matcher m_html1;

        try {
            String regEx_script = "<[\\s]*?script[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?script[\\s]*?>"; // 定义script的正则表达式{或<script[^>]*?>[\\s\\S]*?<\\/script>
            // }
            String regEx_style = "<[\\s]*?style[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?style[\\s]*?>"; // 定义style的正则表达式{或<style[^>]*?>[\\s\\S]*?<\\/style>
            // }
            String regEx_html = "<[^>]+>"; // 定义HTML标签的正则表达式
            String regEx_html1 = "<[^>]+";
            p_script = Pattern.compile(regEx_script,
                    Pattern.CASE_INSENSITIVE);
            m_script = p_script.matcher(htmlStr);
            htmlStr = m_script.replaceAll(""); // 过滤script标签

            p_style = Pattern
                    .compile(regEx_style, Pattern.CASE_INSENSITIVE);
            m_style = p_style.matcher(htmlStr);
            htmlStr = m_style.replaceAll(""); // 过滤style标签

            p_html = Pattern.compile(regEx_html, Pattern.CASE_INSENSITIVE);
            m_html = p_html.matcher(htmlStr);
            htmlStr = m_html.replaceAll(""); // 过滤html标签

            p_html1 = Pattern
                    .compile(regEx_html1, Pattern.CASE_INSENSITIVE);
            m_html1 = p_html1.matcher(htmlStr);
            htmlStr = m_html1.replaceAll(""); // 过滤html标签

            textStr = htmlStr;

            // 替换&amp;nbsp;
            textStr = textStr.replaceAll("&amp;", "").replaceAll("nbsp;", "");

        } catch (Exception e) {
            System.err.println("Html2Text: " + e.getMessage());
        }

        return textStr;// 返回文本字符串
    }
	public static String repDomain(String source, String domain, String element, String attr) { 
		String img = ""; 
		Pattern p_image; 
		Matcher m_image; 
		String regEx_img = "<" + element + "[^<>]*?\\s" + attr + "=['\"]?(.*?)['\"]?(\\s.*?)?>";
		p_image = Pattern.compile(regEx_img, Pattern.CASE_INSENSITIVE); 
		m_image = p_image.matcher(source); 
		while (m_image.find()) {
			img = m_image.group();
			Matcher m = Pattern.compile("href\\s*=\\s*\"?(.*?)(\"|>|\\s+)").matcher(img); 
			while (m.find()) { 
				String srcVal = m.group(1); 
				if(srcVal.indexOf("/@tenant")>=0){
					int idx = srcVal.indexOf("/@tenant"); 
					StringBuffer temp = new StringBuffer(); 
					String dstVal = temp.append(domain).append(srcVal.substring(idx+1)).toString(); 
					source = source.replace(srcVal, dstVal); 
					} 
				} 
			} 
		return source; 
		}
	public static String Html2Text(String inputString) {
        String htmlStr = inputString; // 含html标签的字符串
        String textStr = "";
        java.util.regex.Pattern p_script;
        java.util.regex.Matcher m_script;
        java.util.regex.Pattern p_style;
        java.util.regex.Matcher m_style;
        java.util.regex.Pattern p_html;
        java.util.regex.Matcher m_html;
 
        try {
            String regEx_script = "<[\\s]*?script[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?script[\\s]*?>"; // 定义script的正则表达式{或<script[^>]*?>[\\s\\S]*?<\\/script>
                                                                                                        // }
            String regEx_style = "<[\\s]*?style[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?style[\\s]*?>"; // 定义style的正则表达式{或<style[^>]*?>[\\s\\S]*?<\\/style>
                                                                                                    // }
            String regEx_html = "<[^>]+>"; // 定义HTML标签的正则表达式
 
            p_script = Pattern.compile(regEx_script, Pattern.CASE_INSENSITIVE);
            m_script = p_script.matcher(htmlStr);
            htmlStr = m_script.replaceAll(""); // 过滤script标签
 
            p_style = Pattern.compile(regEx_style, Pattern.CASE_INSENSITIVE);
            m_style = p_style.matcher(htmlStr);
            htmlStr = m_style.replaceAll(""); // 过滤style标签
 
            p_html = Pattern.compile(regEx_html, Pattern.CASE_INSENSITIVE);
            m_html = p_html.matcher(htmlStr);
            htmlStr = m_html.replaceAll(""); // 过滤html标签
 
            textStr = htmlStr;
 
        } catch (Exception e) {
            System.err.println("Html2Text: " + e.getMessage());
        }
        return textStr;// 返回文本字符串
    }
	public static void main(String[] args) {
		String html="<select><option>bbbb</option></select><input name='mileage' min='0' value='aaaa' onkeyup='(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)' onblur='this.v()' type='number'>";
		//String result = replaceHtmlTag(html,"input","value","<span>","</span>");
		//System.out.println(fiterHtmlTag(html, "input"));
		//System.out.println(result);
		 List<String> list =inputValue(html,"select", "option"); 
		 for(String s:list){
			 System.out.println(s);
		 }
	}
}
