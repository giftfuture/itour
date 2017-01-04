package com.itour.util;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.itour.base.util.SystemVariable;
import com.itour.dao.TravelStyleDao;
import com.itour.entity.TravelStyle;

public class Constants {
	
	
	//ResourceBundle.getBundle("conf");
	public static String basePhoto ="/images/";
	//private TravelStyleDao baseDao;
	@Autowired
	private static JdbcTemplate jdbcTemplate;
	
	public static final Map<String,String> travelStyles = new HashMap<String,String>(){{}};
	
	public static  int perRow = 3;
	private static final String BUNDLE_NAME = "conf";///不要加上扩展名
	
	public static final String CUSTOMIZED = "customized";
	public static final String CLIMB = "climb";
	public static final String SELFDRIVE = "selfdrive";
	public static final String LIGHT = "light";
	public static final String SIGHTPHOTO = "sightphoto";
	public static final String HAPPINESS = "happiness";
	public static final String DESTINATION = "destination";
	public static final String HIKING = "hiking";
	
	public static final Set<String> TSTYLES = new HashSet<String>(){{
		add(CUSTOMIZED);
		add(CLIMB);
		add(SELFDRIVE);
		add(LIGHT);
		add(SIGHTPHOTO);
		add(HAPPINESS);
		add(DESTINATION);
		add(HIKING);
	}};
	@SuppressWarnings("unchecked")
	public static void init(){
		ResourceBundle bundle = ResourceBundle.getBundle(BUNDLE_NAME);
		basePhoto=bundle.getString("basePhoto") == null || bundle.getString("basePhoto").equals("") ? basePhoto : bundle.getString("basePhoto");
		perRow = bundle.getString("perRow") == null || bundle.getString("perRow").equals("") ? perRow :  Integer.valueOf( bundle.getString("perRow"));
		String sql ="select id,type,alias,valid,remark from travel_style";
		List<Map<String, Object>> list = null;
		System.out.println("WebInitListener.contextInitialized.Constants.sql="+sql);
		try{
			list =jdbcTemplate.queryForList(sql);  
		   for(Map<String,Object> map:list){
			   if(TSTYLES.contains(map.get("alias"))){				   
				   travelStyles.put((String)map.get("alias"), (String)map.get("alias"));
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
