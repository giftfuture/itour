package com.itour.listener;

import java.net.InetAddress;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.itour.base.util.SystemVariable;

public class WebInitListener extends JdbcDaoSupport implements ServletContextListener {
	
	private static final Logger log = Logger.getLogger(WebInitListener.class);
	
//	public static HashMap<String, String> ConfigMap=new HashMap<String, String>();
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
	}
	@Override
	public void contextInitialized(ServletContextEvent arg0) {
	   ServletContext servlet=arg0.getServletContext();
	   String sql = "select var_name,var_value from sys_variables where var_project='itour' and var_hostname='"+SystemVariable.hostName+"' and var_hostip='"+SystemVariable.hostIp+"'";  
	   List<Map<String, Object>> list = null;
	   System.out.println("WebInitListener.contextInitialized.sql="+sql);
		//WebApplicationContext apli=WebApplicationContextUtils.getWebApplicationContext(servlet);
		//SysVariablesService sysParamService=(SysVariablesService) apli.getBean("SysParamService");
		try{
		    list = this.getJdbcTemplate().queryForList(sql);  
			for (Map map : list){
				SystemVariable.cache.put(map.get("var_name").toString(),map.get("var_value").toString());
			}
		}catch(Exception e){
			
		}
	}


	
	/* 启动不同任务类型的线程 */
	public void initThreadRunner() {
		String pTaskType = "";
		try {
			//pTaskType = PropertiesUtils.getProperties(ContextUtils.taskTypeFileName).getProperty("taskType");
		} catch (Exception e) {
			// logger.error("读取属性文件错误！");
		}
	}
	

}
