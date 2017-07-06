package com.itour.base.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;

public class MD5Util {
	//MD5加密
	 public static byte[] encrypt(String msg){
	  try {
	   MessageDigest md5=MessageDigest.getInstance("MD5");//生成MessageDigest对象
	   byte[] srcBytes=msg.getBytes();
	   md5.update(srcBytes);//更新摘要
	   byte[] resulBytes=md5.digest(); //完成hash计算。得到result
	   return resulBytes;
	  } catch (NoSuchAlgorithmException e) {
	   e.printStackTrace();
	  }
	  return null;
	 }
	//密码复杂度校验
	 public static boolean getInvalue(String pw){
        for(int i=0;i<pw.length();i++){ 
          if(Character.isDigit(pw.charAt(i))&&Pattern.compile("(?i)[A-Za-z]").matcher(pw).find()){
        	  return true;
          }
       }
        return false;
	 }
	 public static void main(String[] args) {
		  String aaString="haquanwen12";
		  //密码复杂度校验判读是否有数字和字母组成
		  if (getInvalue(aaString)) {
		   System.out.println("密码有数字字母做成");
		  }else {
		   System.out.println("密码中不包括数字和字母");
		  }
		  //普通加密
		  System.out.println("普通加密前的密码为："+aaString);
		  String ecoString=encodePwd(aaString);
		  System.out.println("普通加密后的密码为："+ecoString);
		  System.out.println("普通再次加密："+encodePwd(ecoString));
		  //MD5加密
		  System.out.println("MD5加密后的值为"+encrypt(aaString));
		 }
		 //密码加密函数，这个方法具有逆向性，及加密算法和解密算法相同的
		 public static String encodePwd(String pwd){
		  String encodeString="^&*^&687GIKUGUGBjhkjbhjk";
		  String  reString="";
		  if(pwd==null){
		   pwd="";
		  }
		  for(int i=0;i<pwd.length();i++){
		   reString=reString+(char)(pwd.charAt(i)^encodeString.charAt(i));
		   
		  }
		  return reString;
		  
		 }
}
