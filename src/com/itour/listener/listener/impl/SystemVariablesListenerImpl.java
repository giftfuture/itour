package com.itour.listener.listener.impl;

import com.itour.listener.event.SystemVariablesEvent;
import com.itour.listener.listener.SystemVariablesListener;
import com.itour.util.Constants;
public class SystemVariablesListenerImpl extends BaseListenerImpl implements SystemVariablesListener {

	@Override
	public void event(SystemVariablesEvent le) {//systemVariablesEvent
		System.out.println("####SystemVariables重新加载####");
		Constants.load(le.getSource());
	}

	 

 

 
}
