package com.itour.test;

public class StackDeep {
	   private int size = 1;  
	      
	    public void stackLeak(){  
	        size++;  
	        stackLeak();  
	    }  
	    public static void main(String[]args) throws Throwable{  
	    	StackDeep gg = new StackDeep();  
	        try{  
	            gg.stackLeak();  
	        }catch(Throwable e){  
	            System.out.println(gg.size);  
	            throw e;  
	            //e.printStackTrace();  
	        }  
	    } 
}
