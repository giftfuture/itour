package com.itour.test;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.management.MBeanServer;
import javax.management.MBeanServerConnection;
import javax.management.MBeanServerFactory;
import javax.management.ObjectName;
import javax.management.remote.JMXConnector;
import javax.management.remote.JMXConnectorFactory;
import javax.management.remote.JMXConnectorServer;
import javax.management.remote.JMXConnectorServerFactory;
import javax.management.remote.JMXServiceURL;

import org.apache.catalina.mbeans.MBeanUtils;

import com.google.common.collect.Lists;
import com.sun.jdmk.comm.HtmlAdaptorServer;

public class TT  {
	  private static final String CONNECTOR_ADDRESS = "com.sun.management.jmxremote.localConnectorAddress";  
		  
		    public static String getJVM() {  
		        return System.getProperty("java.vm.specification.vendor");  
		    }  
		  
		    public static boolean isSunJVM() {  
		        // need to check for Oracle as that is the name for Java7 onwards.  
		        return getJVM().equals("Sun Microsystems Inc.") || getJVM().startsWith("Oracle");  
		    }  
		      
		    /** 
		     * Finds the JMX Url for a VM by its process id 
		     * 
		     * @param pid 
		     *      The process id value of the VM to search for. 
		     * 
		     * @return the JMX Url of the VM with the given pid or null if not found. 
		     */  
		  //  @SuppressWarnings({ "rawtypes", "unchecked" })  
		    protected String findJMXUrlByProcessId(int pid) {  
		  
		        if (isSunJVM()) {  
		            try {  
		                // Classes are all dynamically loaded, since they are specific to Sun VM  
		                // if it fails for any reason default jmx url will be used  
		  
		                // tools.jar are not always included used by default class loader, so we  
		                // will try to use custom loader that will try to load tools.jar  
		  
		                String javaHome = System.getProperty("java.home");  
		                String tools = javaHome + File.separator +  
		                        ".." + File.separator + "lib" + File.separator + "tools.jar";  
		                URLClassLoader loader = new URLClassLoader(new URL[]{new File(tools).toURI().toURL()});  
		  
		                Class virtualMachine = Class.forName("com.sun.tools.attach.VirtualMachine", true, loader);  
		                Class virtualMachineDescriptor = Class.forName("com.sun.tools.attach.VirtualMachineDescriptor", true, loader);  
		  
		                Method getVMList = virtualMachine.getMethod("list", (Class[])null);  
		                Method attachToVM = virtualMachine.getMethod("attach", String.class);  
		                Method getAgentProperties = virtualMachine.getMethod("getAgentProperties", (Class[])null);  
		                Method getVMId = virtualMachineDescriptor.getMethod("id",  (Class[])null);  
		  
		                List allVMs = (List)getVMList.invoke(null, (Object[])null);  
		  
		                for(Object vmInstance : allVMs) {  
		                    String id = (String)getVMId.invoke(vmInstance, (Object[])null);  
		                    if (id.equals(Integer.toString(pid))) {  
		  
		                        Object vm = attachToVM.invoke(null, id);  
		  
		                        Properties agentProperties = (Properties)getAgentProperties.invoke(vm, (Object[])null);  
		                        String connectorAddress = agentProperties.getProperty(CONNECTOR_ADDRESS);  
		  
		                        if (connectorAddress != null) {  
		                            return connectorAddress;  
		                        } else {  
		                            break;  
		                        }  
		                    }  
		                }  
		                //上面的尝试都不成功，则尝试让agent加载management-agent.jar  
		                Method getSystemProperties = virtualMachine.getMethod("getSystemProperties", (Class[])null);  
		                Method loadAgent = virtualMachine.getMethod("loadAgent", String.class, String.class);  
		                Method detach = virtualMachine.getMethod("detach", (Class[])null);  
		                for(Object vmInstance : allVMs) {  
		                    String id = (String)getVMId.invoke(vmInstance, (Object[])null);  
		                    if (id.equals(Integer.toString(pid))) {  
		  
		                        Object vm = attachToVM.invoke(null, id);  
		  
		                        Properties systemProperties = (Properties)getSystemProperties.invoke(vm, (Object[])null);  
		                        String home = systemProperties.getProperty("java.home");  
		                          
		                        // Normally in ${java.home}/jre/lib/management-agent.jar but might  
		                        // be in ${java.home}/lib in build environments.  
		  
		                        String agent = home + File.separator + "jre" + File.separator +  
		                                           "lib" + File.separator + "management-agent.jar";  
		                        File f = new File(agent);  
		                        if (!f.exists()) {  
		                            agent = home + File.separator +  "lib" + File.separator +  
		                                        "management-agent.jar";  
		                            f = new File(agent);  
		                            if (!f.exists()) {  
		                                throw new IOException("Management agent not found");  
		                            }  
		                        }  
		                          
		                        agent = f.getCanonicalPath();  
		                          
		                        loadAgent.invoke(vm, agent, "com.sun.management.jmxremote");  
		                          
		                        Properties agentProperties = (Properties)getAgentProperties.invoke(vm, (Object[])null);  
		                        String connectorAddress = agentProperties.getProperty(CONNECTOR_ADDRESS);  
		  
		                        //detach 这个vm  
		                        detach.invoke(vm, (Object[])null);  
		                          
		                        if (connectorAddress != null) {  
		                            return connectorAddress;  
		                        } else {  
		                            break;  
		                        }  
		                    }  
		                }  
		            } catch (Exception ignore) {  
		                ignore.printStackTrace();  
		            }  
		        }  
		  
		        return null;  
		    }  
/*	public void test1() {  
	    List<VirtualMachineDescriptor> vms = VirtualMachine.list();  
	    for (VirtualMachineDescriptor desc : vms) {  
	        VirtualMachine vm;  
	        try {  
	            System.out.println("desc:" + desc);  
	            System.out.println("进程id:"+desc.id());  
	            vm = VirtualMachine.attach(desc);  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	            continue;  
	        }  
	        JMXConnector connector = null;  
	        try {  
	            Properties props = vm.getAgentProperties();  
	            for (Map.Entry<Object, Object> entry : props.entrySet()) {  
	                System.out.println(entry.getKey() + "->" + entry.getValue());  
	            }                 
	              
	            String connectorAddress = props.getProperty("com.sun.management.jmxremote.localConnectorAddress");  
	            if (connectorAddress == null) {  
	                System.out.println("connectorAddress  is  null");  
	                continue;  
	            }  
	            System.out.println("conn:" + connectorAddress);  
	             //以下代码用于连接指定的jmx，本地或者远程  
	            JMXServiceURL url = new JMXServiceURL(connectorAddress);  
	        //JMXServiceURL url = new JMXServiceURL("service:jmx:rmi:///jndi/rmi://localhost:1099/TestJMXServer");   
	            connector = JMXConnectorFactory.connect(url);  
	  
	            MBeanServerConnection mbeanConn = connector.getMBeanServerConnection();  
	            Set<ObjectName> beanSet = mbeanConn.queryNames(null, null);  
	            // ...  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        } finally {  
	            try {  
	                if (connector != null)
	                	connector.close();  
	                break;  
	            } catch (IOException e) {  
	                // TODO Auto-generated catch block  
	                e.printStackTrace();  
	            }  
	        }  
	    }  
	} */ 
    public void testJmxRmiRegist() throws Exception {  
		        int rmiPort = 2222;  
		        String jmxServerName = "cn.myroute.mbean.mm";  
		  
		        // jdkfolder/bin/rmiregistry.exe 9999  
		        Registry registry = LocateRegistry.createRegistry(rmiPort);  
		  
		        MBeanServer mbs = MBeanServerFactory.createMBeanServer(jmxServerName);  
		        System.out.println(mbs);  
		        // mbs = MBeanServerFactory.createMBeanServer();  
		        // 新建MBean ObjectName, 在MBeanServer里标识注册的MBean  
		        ObjectName name = new ObjectName(jmxServerName + ":type=Echo");  
		        // HtmlAdaptorServer adapter = new HtmlAdaptorServer();  
		        // 创建MBean  
		        Echo mbean = new Echo();  
		        // 在MBeanServer里注册MBean, 标识为ObjectName(com.tenpay.jmx:type=Echo)  
		        mbs.registerMBean(mbean, name);  
		  
		        JMXServiceURL url = new JMXServiceURL("service:jmx:rmi:///jndi/rmi://localhost:" + rmiPort + "/" + jmxServerName);  
		        System.out.println("JMXServiceURL: " + url.toString());  
		        JMXConnectorServer jmxConnServer = JMXConnectorServerFactory.newJMXConnectorServer(url, null, mbs);  
		        jmxConnServer.start();  
		  
		        Thread.sleep(1000 * 60 * 10);  
	}  
    public void testJmxHtmlAdapter() throws Exception {  
        String jmxServerName = "cn.myroute.mbean.mm";  
        // jdkfolder/bin/rmiregistry.exe 9999  
        MBeanServer mbs = MBeanServerFactory.createMBeanServer(jmxServerName);  
        // mbs = MBeanServerFactory.createMBeanServer();  
        // 新建MBean ObjectName, 在MBeanServer里标识注册的MBean  
        ObjectName name = new ObjectName(jmxServerName + ":type=Echo");  
        // HtmlAdaptorServer adapter = new HtmlAdaptorServer();  
        // 创建MBean 
       // Mbean mb = new MBean();
        Echo mbean = new Echo();  
          
        // 在MBeanServer里注册MBean, 标识为ObjectName(com.tenpay.jmx:type=Echo)  
        mbs.registerMBean(mbean, name);  
         HtmlAdaptorServer adapter = new HtmlAdaptorServer();    
                ObjectName adapterName;    
                 adapterName = new ObjectName(jmxServerName + ":name=" + "htmladapter");    
                 adapter.setPort(8082);    
                adapter.start();    
               mbs.registerMBean(adapter, adapterName);    
          
        Thread.sleep(1000 * 60 * 10);  
    }  
	public static void main(String[] args) {
		Map<Thread, StackTraceElement[]> ttt = Thread.getAllStackTraces();
		for(Map.Entry<Thread, StackTraceElement[]> map:ttt.entrySet()){
			//System.out.println();
			System.out.println(map.getKey()+"    "+map.getValue());
		}
        System.out.println(new TT().findJMXUrlByProcessId(3076));  
	}

}
