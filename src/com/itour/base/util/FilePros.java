package com.itour.base.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.Properties;
import java.util.ResourceBundle;

import org.apache.commons.lang3.StringUtils;



public class FilePros   {

	private static final String resourceFile = "conf";    
	private static final ResourceBundle rb = ResourceBundle.getBundle(resourceFile);
    //属性文件的路径
	//static String profilepath=ClassLoader.getSystemResource("").getPath()+"/conf.properties";
    /**
    * 采用静态方法
    */
    private static Properties props = new Properties();
/*    static {
        try {
        	InputStream is = ClassLoader.getSystemResourceAsStream("conf.properties");
            props.load(is);//new FileInputStream(profilepath)
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            System.exit(-1);
        } catch (IOException e) {       
            System.exit(-1);
        }
    }*/
    /**
     * 
     * @param key
     * @return
     * @throws Exception
     */
    public static String read(String key)throws Exception{
    	return rb.getString(key);
    }
	/**
	 * 上传图片的磁盘存放路径
	 * @return
	 */
	public static String uploadPath(){
		//return  rb.getString("url");//rb.getString("upload");//upload_ptopath
		return rb.getString("upload_path");
	}
	/**
	 * 上传图片的物理路径
	 * @return
	 */
	public static String physicalPath(){
		String propath = rb.getString("physicalPath");//FilePros.class.getResource("/").toString();//此方法在jar包中无效。返回的内容最后包含/
		//return  rb.getString("url");//rb.getString("upload");//upload_ptopath
		return propath;
	}
	
	/**
	 * 回忆幸福的上传图片
	 * @return
	 */
	public static String shareHappyPath(){
		String sharePath = rb.getString("share_happy_path");
		return sharePath;
	}
	
	/**
	 * 上传图片的本项目相关的存储路径
	 * @param request
	 * @return
	 */
	public static String uploadPtopath(){
		//RequestAware ra = null;
		//String path = request.getContextPath();    
		//String ptopath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/images/upload_ptopath/";    
		String ptopath = rb.getString("item_pto_path");
		return ptopath;
	}
	/**
	 * 路线地图
	 * @param request
	 * @return
	 */
	public static String uploadMappath(){
		String mappath = rb.getString("route_map_path");
		return mappath ;
	}
	/**
	 * 路线封面图片
	 * @return
	 */
	public static String uploadCoverpath(){
		String mappath = rb.getString("route_cover_path");
		return mappath ;
	}

	    /**
	    * 更新properties文件的键值对
	    * 如果该主键已经存在，更新该主键的值；
	    * 如果该主键不存在，则插件一对键值。
	    * @param keyname 键名
	    * @param keyvalue 键值
	    */
    public static void updateProperties(String key,String value) {
        try {
        	String path = getWEB_INF()+"classes/conf.properties";
        	File f = new File(path);
        	//System.out.println(f.exists());
           // props.load(new FileInputStream(profilepath));
            // 调用 Hashtable 的方法 put，使用 getProperty 方法提供并行性。
            // 强制要求为属性的键和值使用字符串。返回值是 Hashtable 调用 put 的结果。
        	Iterator<String> keys = rb.keySet().iterator();
        	while(keys.hasNext()){
        		String name = keys.next();
        		props.put(name, rb.getString(name));
        	}
            OutputStream fos = new FileOutputStream(f);  
            //InputStream is = new FileInputStream(f)	;
            //Reader reader = new InputStreamReader(is);
           // System.out.println("####"+f.length());
           // System.out.println("####"+is.available());
           // System.out.println("####"+new FileOutputStream(f).getChannel().size());
            //TestLoad.class.getResourceAsSteam("myprops.properties");
            // props.load(is);
           // props.setProperty(keyname, keyvalue);
            // 以适合使用 load 方法加载到 Properties 表中的格式，
            // 将此 Properties 表中的属性列表（键和元素对）写入输出流
            props.put(key, value);
            props.store(fos, "");
        } catch (IOException e) {
            System.err.println("属性文件更新错误");		
        }
	}
	/**

	 * 获取当前对象的路径

	 * @param object

	 * @return path

	 */

	public static String getObjectPath(Object object){

		return object.getClass().getResource(".").getFile().toString();

	}

	/**

	 * 获取到项目的路径

	 * @return path

	 */

	public static String getProjectPath(){

		return System.getProperty("user.dir");

	}

	/**

	 * 获取 root目录

	 * @return path

	 */

	public static String getRootPath(){

		return getWEB_INF().replace("WEB-INF/", "");

	}

	/**

	 * 获取输出HTML目录

	 * @return

	 */

	public static String getHTMLPath(){

		return getFreePath() + "html/html/";

	}

	/**

	 * 获取输出FTL目录

	 * @return

	 */

	public static String getFTLPath(){

		return getFreePath() + "html/ftl/";

	}

	/**

	 * 获取 web-inf目录

	 * @return path

	 */

	public static String getWEB_INF(){
		return getClassPath().replace("classes/", "");

	}

	/**

	 * 获取模版文件夹路径

	 * @return path

	 */

	public static String getFreePath(){

		return getWEB_INF() + "ftl/";

	}

	/**

	 * 文本换行，因为Linux  和 Windows 的换行符不一样

	 * @return

	 */

	public static String nextLine(){
		 String nextLine = System.getProperty("line.separator");
		 return nextLine;
	}

	/**

	 * 获取images 路径

	 * @return

	 */

	public static String getImages(){
		return getRootPath() + "images/" ;
	}

	/**

	 * 获取sitemap 路径

	 * @return

	 */

	public static String getSiteMapPath(){
		return getRootPath() + "txt/sitemap" ;
	}

	/**

	 * 获取Txt 路径

	 * @return

	 */

	public static String getTxt(){
		return getRootPath() + "txt" ;
	}

	/**

	 * 获取到classes目录

	 * @return path

	 */

	public static String getClassPath(){
		String systemName = System.getProperty("os.name");
		//判断当前环境，如果是Windows 要截取路径的第一个 '/'
		if(!StringUtils.isBlank(systemName) && systemName.indexOf("Windows") !=-1){
			return FilePros.class.getResource("/").getFile().toString().substring(1);
		}else{
			return FilePros.class.getResource("/").getFile().toString();
		}

	}
	public static void main(String[] args) {
		//String resourceFile = "jdbc";    
//        创建一个默认的ResourceBundle对象   
//        ResourceBundle会查找包Forum下的CNS.properties的文件   
//        Forum是资源的包名，它跟普通java类的命名规则完全一样：   
//        - 区分大小写   
//        - 扩展名 .properties 省略。就像对于类可以省略掉 .class扩展名一样   
//        - 资源文件必须位于指定包的路径之下（位于所指定的classpath中）   
//        假如你是在非Web项目中使用，则一定要写资源文件的路径，也就是包路径必须存在。
//        如果是Web项目，不写包路径可以，此时将资源文件放在WEB-INF\classes\目录下就可以。
	//ResourceBundle rb = ResourceBundle.getBundle(resourceFile);
	File f = new File(getWEB_INF()+"classes/conf.properties");
	System.out.println(f.exists());//这里是分大小写的，嘿嘿输出值为
		
	}
}
