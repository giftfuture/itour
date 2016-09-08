package com.itour.test;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;

public class Testing {
	  private final char value[] = null;
	  String ss = "";
	  private static int a = 2;
	  
	 Character ch = null;
	  private int hash; // Default to 0
	  /*public int hashCode() {
	        int h = hash;
	        if (h == 0) {
	            int off = offset;
	            char val[] = value;
	            int len = count;

	            for (int i = 0; i < len; i++) {
	                h = 31*h + val[off++];
	            }
	            hash = h;
	        }
	        return h;
	}*/
	   public int hashCode() {
	        int h = hash;
	        if (h == 0 && value.length > 0) {
	            char val[] = value;

	            for (int i = 0; i < value.length; i++) {
	                h = 31 * h + val[i];
	            }
	            hash = h;
	        }
	        return h;
	    }
	protected int aa(){
		Testing s = this;
		return 0;
	}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Class<String> cls = null;
		Object obj = null;
		Collections.sort(new ArrayList());
		BigDecimal bd = new BigDecimal("1111");
		System.out.println(bd.toEngineeringString());
		System.out.println(bd.toPlainString());
		Testing.a++;
		new Testing().a++;
		--new Testing().a;
		System.out.println(Testing.a);
		String str1 = "abc"; 
        String str2 = new String("abc").intern(); 
        System.out.println(str1==str2); 
	}

}
