package com.itour.listener.listener.impl;

import com.itour.listener.event.BaseEvent;
import com.itour.listener.listener.BaseListener;
import com.itour.util.Constants;

public class BaseListenerImpl implements BaseListener{

	@Override
	public void event(BaseEvent le) {//baseEvent
		System.out.println("####重新加载BaseListener####");
		//Constants.init();
	}
	
}
