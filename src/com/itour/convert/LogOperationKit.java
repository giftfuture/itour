package com.itour.convert;


import java.util.HashMap;
import java.util.Map;

import com.itour.entity.LogOperation;
import com.itour.entity.LogSetting;
import com.itour.vo.LogOperationVo;
import com.itour.vo.LogSettingVo;
/**
 * 
 * <br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class LogOperationKit{
	public static LogOperationVo toVo(LogOperation ls)throws Exception{
		LogOperationVo vo = new LogOperationVo();
    	vo.setCreater(ls.getCreater());
    	vo.setCreateTime(ls.getCreateTime());
    	vo.setLogCode(ls.getLogCode());
    	vo.setContent(ls.getContent());
    	vo.setOperationType(ls.getOperationType());
    	vo.setOperCode(ls.getOperCode());
    	vo.setPrimaryKeyvalue(ls.getPrimaryKeyvalue());
    	vo.setUrl(ls.getUrl());
    	return vo;
    }
    
    public static LogOperation toEntity(LogOperationVo ls)throws Exception{
    	LogOperation vo = new LogOperation();
    	vo.setCreater(ls.getCreater());
    	vo.setCreateTime(ls.getCreateTime());
    	vo.setLogCode(ls.getLogCode());
    	vo.setContent(ls.getContent());
    	vo.setOperationType(ls.getOperationType());
    	vo.setOperCode(ls.getOperCode());
    	vo.setPrimaryKeyvalue(ls.getPrimaryKeyvalue());
    	vo.setUrl(ls.getUrl());
    	return vo;
    }
    
    public static Map<String,Object> toRecord(LogOperation ls)throws Exception{
    	Map<String,Object> record = new HashMap<String,Object>();
    	record.put("logCode", ls.getLogCode());
    	record.put("creater",ls.getCreater());
    	record.put("createTime",ls.getCreateTime());
    	record.put("content", ls.getContent());
    	record.put("operationType", ls.getOperationType());
    	record.put("operCode", ls.getOperCode());
    	record.put("primaryKeyvalue", ls.getPrimaryKeyvalue());
    	record.put("url", ls.getUrl());
    	return record;
    }
}

