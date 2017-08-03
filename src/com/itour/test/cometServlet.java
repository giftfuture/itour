package com.itour.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.comet.CometEvent;
import org.apache.catalina.comet.CometEvent.EventType;
import org.apache.catalina.comet.CometProcessor;

public class cometServlet extends HttpServlet implements CometProcessor {

	@Override
	public void event(CometEvent e) throws IOException, ServletException {
		//e.setTimeout(10000);
		//e.close();
		  if(e.getEventType() == EventType.BEGIN) {
           // fill in code handling here
		   HttpServletResponse response = e.getHttpServletResponse();
           PrintWriter out = response.getWriter();
            out.write("Hello world");
            out.flush(); 
            //System.out.println("message sent");
        }
        if(e.getEventType() == EventType.READ) {
            // fill in code handling here
         }
         // and continue handing other events
        if(e.getEventType() == EventType.END){
        	
        }
	}

}
