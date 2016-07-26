package com.itour.base.util;

import java.util.ResourceBundle;

public class RedProFile {

	
	public static String uploadPath(){
		String resourceFile = "jdbc";    
		ResourceBundle rb = ResourceBundle.getBundle(resourceFile);
		return rb.getString("upload");
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
