package com.itour.base.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class IDGenerator {
	   
	  private static long num=0; 
	   
	  /**
	   * 随机生成UUID
	   * @return
	   */
	  public static synchronized String getUUID(){
	    UUID uuid=UUID.randomUUID();
	    String str = uuid.toString(); 
	    String uuidStr=str.replace("-", "");
	    return uuidStr.toUpperCase();
	  }
	  /**
	   * 根据字符串生成固定UUID
	   * @param name
	   * @return
	   */
	  public static synchronized String getUUID(String name){
	    UUID uuid=UUID.nameUUIDFromBytes(name.getBytes());
	    String str = uuid.toString(); 
	    String uuidStr=str.replace("-", "");
	    return uuidStr;
	  }
	  /**
	   * 根据日期生成长整型id
	   * @param args
	   */
	  public static synchronized long getLongId(){
	    String date=DateUtil.format(new Date(),new SimpleDateFormat( "yyyyMMddHHmmssS"));
	    System.out.println("原始id="+date);
	    if(num>=99) num=0l;
	    ++num;
	    if(num<10) {
	      date=date+00+num;
	    }else{
	      date+=num;
	    }
	    return Long.valueOf(date);
	  }
	  
	  public static void main(String[]args){
		 System.out.println(UUID.randomUUID());
	  }
	  
	}