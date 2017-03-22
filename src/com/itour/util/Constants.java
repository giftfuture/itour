package com.itour.util;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.google.common.collect.Maps;
import com.itour.base.util.SystemVariable;
import com.itour.dao.TravelStyleDao;
import com.itour.entity.TravelStyle;

public class Constants {
	//ResourceBundle.getBundle("conf");
	public static String basePhoto ="/images/";
	//private TravelStyleDao baseDao;
	@Autowired
	private static JdbcTemplate jdbcTemplate;
	
	public static final Map<String,String> travelStyles = Maps.newHashMap();
	public static final int maxDestinations = 3;//每个地区最多显示的目的地数，若超出，则显示更多目的地选项
	public static final int perPage = 3;//前端回忆幸福每页数据
	public static final int fbperPage = 4;//前端反馈每页数据量
	public static  int perRow = 3;
	private static final String BUNDLE_NAME = "conf";///不要加上扩展名
	public static final String FREEMARKER_PATH="";
	public static final String CUSTOMIZED = "customized";
	public static final String CLIMB = "climb";
	public static final String SELFDRIVE = "selfdrive";
	public static final String LIGHT = "light";
	public static final String HOTSIGHT = "hotsight";
	public static final String HAPPINESS = "happiness";
	public static final String DESTINATION = "destination";
	public static final String HIKING = "hiking";
	
	public static final String ALARM_FILE_PATH = "";
	private static final ResourceBundle bundle = ResourceBundle.getBundle(BUNDLE_NAME);
	public static final Set<String> TSTYLES = new HashSet<String>(){{
		add(CUSTOMIZED);
		add(CLIMB);
		add(SELFDRIVE);
		add(LIGHT);
		add(HOTSIGHT);
		add(HAPPINESS);
		add(DESTINATION);
		add(HIKING);
	}};
	
	public static void init(){
		basePhoto= bundle == null || StringUtils.isEmpty(bundle.getString("basePhoto")) ? basePhoto : bundle.getString("basePhoto");
		perRow = bundle == null ||StringUtils.isEmpty(bundle.getString("perRow")) ? perRow :  Integer.valueOf( bundle.getString("perRow"));
		String sql ="select id,type,alias,valid,remark from travel_style where valid=1";
		List<Map<String, Object>> list = null;
		System.out.println("WebInitListener.contextInitialized.Constants.sql="+sql);
		try{
	   		list =jdbcTemplate.queryForList(sql);  
		   for(Map<String,Object> map:list){
			   if(TSTYLES.contains(map.get("alias"))){				   
				   travelStyles.put((String)map.get("alias"),(String)map.get("alias"));
			   }
		   }
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}


	public static void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		Constants.jdbcTemplate = jdbcTemplate;
	}
}
