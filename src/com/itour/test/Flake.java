package com.itour.test;

import com.itour.base.util.IDGenerator;

public class Flake {

	public static void main(String[] args) {
		StringBuffer st = new StringBuffer();
		st.append("Hello");
		st.insert(0, "World");
		System.out.println(st.reverse().toString());
		//System.out.println(IDGenerator.getLongId());
		Runtime run= Runtime.getRuntime();
		System.out.println(run.totalMemory());
		System.out.println(run.maxMemory());
		System.out.println(run.freeMemory());
		System.out.println(run.availableProcessors());
		//System.out.println(run.);
	}

}
