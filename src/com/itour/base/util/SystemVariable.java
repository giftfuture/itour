package com.itour.base.util;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.CaseInsensitiveMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.itour.dao.CustomersDao;

public class SystemVariable{
	/**
	 * 任务处理状态标志,
	 * 等0表示等待接受任务。
	 * 非0表示正在处理任务。
	 */
	public static int TaskCount = 0;
	public static Map<String, String> map = new HashMap<String, String>();
	
	public static String taskSerialNum = "";				//任务序列号
	public static Exception exception = null;					//系统异常
	public static String hostName = "";						//本机计算机名
	public static String hostIp = "";						//本机IP地址
	public static String remoteAddr = "";					//远程调用IP
	
	public static Map<String, String> exceptionBrand = new HashMap<String, String>();//标签字段
	public static List<Exception> exceptionList = new ArrayList<Exception>();//异常列表
	public static StringBuffer brandString = new StringBuffer();//异常标签
	
	public static String chnl_tx_no = "";					//CPS渠道流水号
	public static String tasker = "";						//调用者
	
	public static boolean localCacheRunning = false;		//本地文件写入运行状态
	public static int localCacheTaskCount = 0;				//本地文件写入线程数
	public static Exception localCacheException = null;;	//本地文件写入异常
	
	public static int errorSyncDataCount = 0;				//同步失败数据数量
	
	public static final Map<String,String> cache = new HashMap<String,String>();
	
	static{
		try {
		   hostName = InetAddress.getLocalHost().getHostName();
		   hostIp = InetAddress.getLocalHost().getHostAddress();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
	}
	
	
	public static synchronized void addErrorSyncDataCount(){
		errorSyncDataCount++;
	}
	
	public static synchronized void addLocalCacheThreadCount(){
		localCacheTaskCount++;
	}
	
	public static synchronized void reduceLocalCacheThreadCount(){
		localCacheTaskCount--;
	}
	
	public static synchronized void addThreadCount(){
		TaskCount++;
	}
	
	public static synchronized void reduceThreadCount(){
		TaskCount--;
	}
	
	public static synchronized void addException(Exception exception){
		exceptionList.add(exception);
	}
	
	public static synchronized void addBrandString(String brand){
		brandString.append(brand);
	}
	
	public static synchronized void clearBrandString(){
		brandString.delete(0, brandString.length());
	}
	
}
