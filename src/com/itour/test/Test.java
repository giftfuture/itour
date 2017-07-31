package com.itour.test;

import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import org.apache.commons.lang3.ArrayUtils;

import com.itour.test.Echo.Echoo;
public class Test {
	String color() {
		return null;
	} 
	//String[] coloar() default {"blue","red",......}
	
	public static void main(String[] args) {
		HashMap map = new HashMap();
		map.put(new Object(), new Object());
		map.put(new ArrayList(), new ArrayList());
		map.put(12, new ArrayList());
		map.put(1, 2);
		map.put(1, 22);
		
		map.put(new ArrayList(), new ArrayList());
		//for(map.forEach(action);)
		Iterator<Entry> it = map.entrySet().iterator();
		while(it.hasNext())
		{
			Entry en = it.next();
			System.out.println(en.getKey()+"   "+en.getValue());
		}
		List<String> list = new ArrayList<String>();
		//Enumeration et = map.values().iterator();
		list.sort(null);
	//	Arrays.sort(a);
		//Arrays.parallelSort(a);
		String[] array = {};
		LinkedList ll = null;
		 
		//ll.add(index, element);
		System.out.println(Integer.MIN_VALUE);
		System.out.println(list.getClass());
		System.out.println(array.getClass());
		System.out.println(Integer.MAX_VALUE);
		URL[] urls = sun.misc.Launcher.getBootstrapClassPath().getURLs();  
		for (int i = 0; i < urls.length; i++) {  
		    System.out.println(urls[i].toExternalForm());  
		}  
	//	Arrays.copyOf(original, newLength)
		int[] aa = { 1, 2, 3 };
		Set<String> set = new HashSet<String>();
		ArrayUtils.reverse(aa);
		System.out.println(Arrays.toString(aa));
		ClassLoader loader = Test.class.getClassLoader();    //获得加载ClassLoaderTest.class这个类的类加载器  
		while(loader != null) {  
		    System.out.println(loader);  
		    loader = loader.getParent();    //获得父类加载器的引用  
		}  
		System.out.println(loader);  
		//queue.offer(e)
		queue.poll();
		//new Echoo("");
		 
	}
	Executor cc = null;// new ExecutorService();
	
	private static ConcurrentLinkedQueue<String> queue = new ConcurrentLinkedQueue<String>();
//	private static ConcurrentHashMap<String> segments = new ConcurrentHashMap<String>();
}
