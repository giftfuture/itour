package com.itour.test;

import java.lang.reflect.Array;
import java.math.BigInteger;
import java.time.MonthDay;
import java.time.Year;
import java.time.YearMonth;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.UUID;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.function.Function;
import org.springframework.transaction.annotation.Isolation;
import com.google.common.base.Optional;
import com.google.common.collect.Maps;
//import java.util.function.
/**
 * {@code}
 * @author THUNDEROBOT
 *
 */
public class StringTest {
	int a;
	void tt(){
		
	}
	

	//public static List<E> list = Collections.synchronizedList(new ArrayList<E>());
	public static void main(String[] args) {
		System.out.println(new StringTest().a);
		//String[] array = Collections.singletonList(o);
		//String [] list = new String[]{"1","2","4"} ;
		Float ff = null;
		Double dd = null;
		Boolean bb = null;
		Short tt = null;
		Long ll  =null;
		Byte bt = null;
		Character c = null;
		//System.out.println(list[0]);
		BigInteger bi = BigInteger.valueOf(10);
		Set<String> set = new TreeSet<String>();
		set.add("w");
	    String init[] = { "One", "Two", "Three", "One", "Two", "Three" };
		set.addAll(Arrays.asList(init));
		set.add("w");
		System.out.println(set);
		System.out.println(bi.toByteArray()[0]);
		Vector vc = new Vector(1);
		System.out.println(bi);
		Map map = Maps.newHashMap();
		//map.putIfAbsent(key, value)
		int a =1,b=2;
		int ch=a+b;
		//IntegerCache ic = null;
		Maps.newTreeMap();
		new TreeMap();
		Array array = null;
		Number nb = null;
		UUID uuid = null;
		Scanner sc = null;
		Optional op = null;
		StrictMath sm = null;
		CharSequence cs = null;
		Year year = null;
		YearMonth ym = null;
		MonthDay md = null;
		Integer it = Integer.parseInt("110", 2);
		System.out.println(Integer.toUnsignedLong(-4483484));
		AtomicIntegerArray aia = null;
		StringBuilder sd = null;
		StringBuffer sf = null;
		//Arrays.copyOf(original, newLength)
		/*System.arraycopy(src, srcPos, dest, destPos, length);
		Collections.nCopies(n, o);
		Collections.synchronizedNavigableMap(m);
		Collections.singleton(o);
		Collections.unmodifiableCollection(c);*/
		Function fc = null;
		 // create an array of string objs

	      
	      // create one list
	      List list = new ArrayList(Arrays.asList(init));
	      
	      System.out.println("List value before: "+list);
	      
	      // create singleton list
	      Collection<String> coll = Collections.unmodifiableCollection(list);
	      
	      System.out.println( coll);
	      
	      Void vo = null;
	      
	}

}
