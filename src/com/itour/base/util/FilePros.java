package com.itour.base.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.AsyncContext;
import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpUpgradeHandler;
import javax.servlet.http.Part;

public class FilePros   {

	private static final String resourceFile = "jdbc";    
	private static final ResourceBundle rb = ResourceBundle.getBundle(resourceFile);
	/**
	 * 上传图片的磁盘存放路径
	 * @return
	 */
	public static String uploadPath(){
		
		//return  rb.getString("url");//rb.getString("upload");//upload_ptopath
		return rb.getString("upload_path");
	}
	/**
	 * 上传图片的物理路径
	 * @return
	 */
	public static String physicalPath(){
		String propath = rb.getString("physicalPath");//FilePros.class.getResource("/").toString();//此方法在jar包中无效。返回的内容最后包含/
		//return  rb.getString("url");//rb.getString("upload");//upload_ptopath
		return propath;
	}
	/**
	 * 上传图片的本项目相关的存储路径
	 * @param request
	 * @return
	 */
	public static String uploadPtopath(){
		//RequestAware ra = null;
		//String path = request.getContextPath();    
		//String ptopath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/images/upload_ptopath/";    
		String ptopath = rb.getString("item_pto_path");
		return ptopath;
	}
	/**
	 * 路线地图
	 * @param request
	 * @return
	 */
	public static String uploadMappath(){
		String mappath = rb.getString("route_map_path");
		return mappath ;
	}
	/**
	 * 路线封面图片
	 * @return
	 */
	public static String uploadCoverpath(){
		String mappath = rb.getString("route_cover_path");
		return mappath ;
	}
	
	
	public static void main(String[] args) {
		//String resourceFile = "jdbc";    
//        创建一个默认的ResourceBundle对象   
//        ResourceBundle会查找包Forum下的CNS.properties的文件   
//        Forum是资源的包名，它跟普通java类的命名规则完全一样：   
//        - 区分大小写   
//        - 扩展名 .properties 省略。就像对于类可以省略掉 .class扩展名一样   
//        - 资源文件必须位于指定包的路径之下（位于所指定的classpath中）   
//        假如你是在非Web项目中使用，则一定要写资源文件的路径，也就是包路径必须存在。
//        如果是Web项目，不写包路径可以，此时将资源文件放在WEB-INF\classes\目录下就可以。
	//ResourceBundle rb = ResourceBundle.getBundle(resourceFile);
	System.out.println(uploadPath());//这里是分大小写的，嘿嘿输出值为
		
	}
}
