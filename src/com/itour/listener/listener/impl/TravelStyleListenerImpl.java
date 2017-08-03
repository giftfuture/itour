package com.itour.listener.listener.impl;

import com.itour.listener.event.TravelStyleEvent;
import com.itour.listener.listener.TravelStyleListener;
import com.itour.util.Constants;

public class  TravelStyleListenerImpl extends BaseListenerImpl implements TravelStyleListener {
	
	@Override
	public void event(TravelStyleEvent le){//travelStyleEvent
		System.out.println("####TravelStyle重新加载####");
		Constants.load(le.getSource());
	};  
}
