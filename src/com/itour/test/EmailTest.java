package com.itour.test;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;

import com.google.common.collect.Lists;



public class EmailTest extends Thread{
	public EmailTest(){}
	int i=0;
	public EmailTest(int i){
		this.i = i;
	}
	
	@Override
	public void run(){
		System.out.println("##############"+i);
	}
	
	public static void main(String[] args) {
		String c = "1";
		switch(c){
		case "\u7537":
			break;
		case "1":
			break;
		case "":
			break;
		}
		  // 要验证的字符串
	    String str = "service@xsoftlab.net";
	    // 邮箱验证规则
	    String regEx = "[a-zA-Z_]{1,}[0-9]{0,}@(([a-zA-z0-9]-*){1,}\\.){1,3}[a-zA-z\\-]{1,}";
	    // 编译正则表达式
	    Pattern pattern = Pattern.compile(regEx);
	    // 忽略大小写的写法
	    // Pattern pat = Pattern.compile(regEx, Pattern.CASE_INSENSITIVE);
	    Matcher matcher = pattern.matcher(str);
	    // 字符串是否与正则表达式相匹配
	    if(matcher.find()){
	    String rs = matcher.group(0);
	    System.out.println(rs);
	    System.out.println("###"+StringUtils.EMPTY);
	    }
	    
	    String [][] b = new String[3][4];          
	    for(int i = 0;i<3;i++) {   
	    	for (int j = 0;j < 4;j++ )  {      
	    		b[i][j] = "A"+j;    
	    	}  
	    	}                   //打印 content 和content1来看有什么不同                   //通过打印可知content 的元素都被打印出来                   //形如[[A0,A1,A2,A3],[A0,A1,A2,A3],[A0,A1,A2,A3]]                   //而content1的则是一堆乱码                  
	    String content = Arrays.deepToString(b);      
	    System.out.println("Hello World!: " +content);               
	    String content1 = Arrays.toString(b);               
	    System.out.println("Hello World!: " +content1);   
	    try {
	    	File f = new File("C:\\第二RUTC运动和能力(重职者的最高使命).txt");
	    	
			BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(f),"GBK"));
			List<String> lines = Lists.newArrayList();
			String line = "";
			while((line=br.readLine())!=null){
				//System.out.println(line);
				lines.add(line);
			}
			br.close();
			File ff = new File("I:\\aa.txt");
			if(!ff.exists()){
				ff.createNewFile();
			}
			BufferedWriter bw = new BufferedWriter(new FileWriter(ff));
			for(Iterator<String> it = lines.iterator();it.hasNext();){
				bw.write(it.next());
				bw.flush();
			}
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	 /*   ExecutorService exec = Executors.newCachedThreadPool();  
        Thread thread = new Thread(new EmailTest());  
        thread.setUncaughtExceptionHandler(new ExceptionHandler());  
        exec.execute(thread);  
        exec.shutdown();  */
	    ThreadFactory tf = Executors.privilegedThreadFactory();
	    ExecutorService exec = Executors.newCachedThreadPool(tf);  
        exec.execute(new EmailTest());
        //exec.awaitTermination(34943493949l, TimeUnit.SECONDS);
        List<Future<String>> resultList = new ArrayList<Future<String>>();
        //创建10个任务并执行
        for (int i = 0; i < 10; i++) { 
                //使用ExecutorService执行Callable类型的任务，并将结果保存在future变量中
                Future<String> future = (Future<String>) exec.submit(new EmailTest(i)); 
                //将任务执行结果存储到List中
                resultList.add(future); 
        } 
        //遍历任务的结果
        for (Future<String> fs : resultList) { 
                try { 
                        System.out.println(fs.get());     //打印各个线程（任务）执行的结果
                } catch (InterruptedException e) { 
                        e.printStackTrace(); 
                } catch (ExecutionException e) { 
                        e.printStackTrace(); 
                } finally { 
                        //启动一次顺序关闭，执行以前提交的任务，但不接受新任务。如果已经关闭，则调用没有其他作用。
                        exec.shutdown(); 
                } 
        } 
        final EmailTest m = new EmailTest(); //m is of reference type  
        m.i = 100; // OK. We can change state of object m (m is mutable and final doesn't change this fact)  
        //m = new EmailTest(); // does not compile. m is final so can't be reassigned  
	}
}
