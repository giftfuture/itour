package com.itour.base.convert;

import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageOutputStream;

import org.apache.commons.lang3.StringUtils;

import com.google.common.collect.Maps;
import com.itour.vo.ShowHappyVo;

import gui.ava.html.image.generator.HtmlImageGenerator;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class ImageFilter {
	public final static Map<String,String> base64ImgExt = new HashMap(){{
		put("jpg","jpeg");
		put("png","png");
		put("gif","gif");
		put("bmp","bmp");
		put("tif","tif");
		put("psd","psd");
		put("ico","x-icon");
	}};
	 /**
    *
    * 基本功能：替换指定的标签
    * @param str
    * @param beforeTag   要替换的标签
    * @param tagAttrib   要替换的标签属性值
    * @param startTag    新标签开始标记
    * @param endTag   新标签结束标记
    * @return String
    */
  public static String replaceHtmlTag(String str, String beforeTag,String tagAttrib, String startTag, String endTag) {
	  //  String regxpForTag = "<//s*" + beforeTag + "//s+([^>]*)//s*>" ;
	 String regxpForTag = "<//s*" + beforeTag + "//s+([^>]*)//s*" ;
  	 String regxpForTagAttrib = "";//tagAttrib + "=//s*/"([^/"]+)/"" ;
     //Pattern.CASE_INSENSITIVE 忽略大小写
     Pattern patternForTag = Pattern.compile (regxpForTag,Pattern. CASE_INSENSITIVE );
     Pattern patternForAttrib = Pattern.compile (regxpForTagAttrib,Pattern. CASE_INSENSITIVE );   
     Matcher matcherForTag = patternForTag.matcher(str);
     StringBuffer sb = new StringBuffer ();
     boolean result = matcherForTag.find();
     // 循环找出每个 img 标签
     while (result) {
         StringBuffer sbreplace = new StringBuffer( "<img " );
         Matcher matcherForAttrib = patternForAttrib.matcher(matcherForTag
                .group(1));
         if (matcherForAttrib.find()) {
            matcherForAttrib.appendReplacement(sbreplace, startTag
                   + matcherForAttrib.group(1) + endTag);
         }
         matcherForAttrib.appendTail(sbreplace);
         matcherForTag.appendReplacement(sb, sbreplace.toString());
         result = matcherForTag.find();
     }
     matcherForTag.appendTail(sb);         
     return sb.toString();
  }
  
  private String replaceImgSrc(String content,String replaceHttp){
      String result ="";
		//    String patternStr="^.*<img\\s*.*\\s*src=\\\"(.*)\\\"\\s*.*>.*$";
		//    String patternStr=".*?<img\\s*.*?\\s*src=\\\"(.*)\\\"\\s*.*?>.*";
		//     String patternStr="^.*<img\\s*.*\\s*src=\\\"(.*?)\\\"\\s*.*>.*$";
		//    String patternStr="<img(?:.*)src=(\"{1}|\'{1})([^\\[^>]+[gif|jpg|jpeg|bmp|bmp]*)(\"{1}|\'{1})(?:.*)>";
		//    String patternStr="<img.*src=(.*?)[^>]*?>src=\"?(.*?)(\"|>|\\s+)";
		     
		//    String patternStr="(?i)<img[^>]*?src=\"([])\"";
		//    String patternStr = "<img\\s+[^>]*?src="((\\w+?:\\/\\/|/)[^"]*?)"[^>]*?>";
		//         String patternStr = "<img\\s+[^>]*?src=\"((\\w+?:?//|\\/|\\w*)[^\"]*?)\"[^>]*?>";
	  String patternStr = "<img\\s+[^>]*?src=[\"|\']((\\w+?:?//|\\/|\\w*)[^\"]*?)[\"|\'][^>]*?>";
      Pattern pattern=Pattern.compile(patternStr);
      Matcher matcher = pattern.matcher(content);
       //如果匹配到了img
      System.out.println("matcher.matches() == "+matcher.matches());
      if(matcher.matches()){
        result=content.replaceAll(matcher.group(1),(replaceHttp+matcher.group(1)));
        System.out.println(" result == "+result);
      }else{
          result =content;
      }
      return result;
  	}
	/**
	 * 替换内容中存在的img标签中的src值
	 * @param content
	 * @param i
	 * @return
	*/
	public static String replaceImgSrc(String content,int i) {
		int k =0;
		StringBuffer sb= new StringBuffer();
		//目前img标签标示有3种表达式
		//<img alt=""src="1.jpg"/> <img alt=""src="1.jpg"></img><img alt=""src="1.jpg">
		//开始匹配content中的<img />标签
		Pattern p_img = Pattern.compile("<(img|IMG)(.*?)(/>|></img>|>)");
		Matcher m_img = p_img.matcher(content);
		boolean result_img = m_img.find();
		if (result_img) {
			while (result_img) {
				StringBuffer sbSrc= new StringBuffer();
				//获取到匹配的<img />标签中的内容
				String str_img = m_img.group(2);
				//开始匹配<img />标签中的src
				Pattern p_src = null;// Pattern.compile("(src|SRC)=("|')(.*?)("|')");
				Matcher m_src = p_src.matcher(str_img);
				if (m_src.find()) {
			//	m_src.appendReplacement(sbSrc,"src=""+ ( i + 1) +"_"+ ( k + 1) +".jpg"");
				m_src.appendTail(sbSrc);
				m_img.appendReplacement(sb,"<img"+ sbSrc.toString() +"/>");
				}
				//结束匹配<img />标签中的src
				//匹配content中是否存在下一个<img />标签，有则继续以上步骤匹配<img />标签中的src
				result_img = m_img.find();
				k++;
			}
			m_img.appendTail(sb);
			return sb.toString();
		}else{
			return content;
		}
	}
	/**
	 * 
	 * @param htmlStr
	 * @return
	 */
	public static List<String> getsrcList(String htmlStr) {  
        String img = "";  
        Pattern p_image;  
        Matcher m_image;  
        List<String> pics = new ArrayList<String>();  
//       String regEx_img = "<img.*src=(.*?)[^>]*?>"; //图片链接地址  
        String regEx_img = "<img.*src\\s*=\\s*(.*?)[^>]*?>";  
        p_image = Pattern.compile(regEx_img);  //, Pattern.CASE_INSENSITIVE
        m_image = p_image.matcher(htmlStr);  
        while (m_image.find()) {  
            img = img + "," + m_image.group();  
            // Matcher m =  
            // Pattern.compile("src=\"?(.*?)(\"|>|\\s+)").matcher(img); //匹配src  
            Matcher m = Pattern.compile("src\\s*=\\s*\"?(.*?)(\"|>|\\s+)").matcher(img); 
            Matcher mc = Pattern.compile("data-filename\\s*=\\s*\"?(.*?)(\"|>|\\s+)").matcher(img); 
            while (m.find()&&mc.find()) {  
                pics.add(m.group(1));  
            }  
        }  
        return pics;  
    }
	/**
	 * 
	 * @param htmlStr
	 * @return
	 */
	public static Map<String,String> getImgSrc(String htmlStr) {  
        String img = "";  
        Pattern p_image;  
        Matcher m_image;  
      //  List<String> pics = new ArrayList<String>();  
        Map<String,String> imgs = Maps.newHashMap();
//       String regEx_img = "<img.*src=(.*?)[^>]*?>"; //图片链接地址  
        String regEx_img = "<img.*src\\s*=\\s*(.*?)[^>]*?>";  
        p_image = Pattern.compile(regEx_img);  //, Pattern.CASE_INSENSITIVE
        m_image = p_image.matcher(htmlStr);  
        while (m_image.find()) {  
            img = img + "," + m_image.group();  
            // Matcher m =  
            // Pattern.compile("src=\"?(.*?)(\"|>|\\s+)").matcher(img); //匹配src  
            Matcher m = Pattern.compile("src\\s*=\\s*\"?(.*?)(\"|>|\\s+)").matcher(img); 
            Matcher mc = Pattern.compile("data-filename\\s*=\\s*\"?(.*?)(\"|>|\\s+)").matcher(img); 
            while (m.find()&&mc.find()) {  
               // pics.add(m.group(1));  
            	imgs.put(mc.group(1), m.group(1));
            }  
        }  
        return imgs;  
    }
	/**
	 *imageGenerator.loadHtml(htmlstr);
	  imageGenerator.getBufferedImage();
	  imageGenerator.saveAsImage("d:/hello-world.png");
	  imageGenerator.saveAsHtmlWithMap("hello-world.html", "hello-world.png");
	 * @param file
	 * @param content
	 */
	public static void Html2Image(String file,String content){
        try {
			HtmlImageGenerator imageGenerator = new HtmlImageGenerator();
			Dimension ds = new Dimension(400,4000);
			imageGenerator.setSize(ds);
			String htmlstr = content;
			imageGenerator.loadHtml(htmlstr);
			ImageOutputStream imOut = null;
			byte[] b = null;
			imageGenerator.getBufferedImage();
			try {
			   // ImgUtil.mkdirPath(file);
			    imageGenerator.saveAsImage(file);
			} catch (Exception e) {
			    e.printStackTrace();
			}
			imageGenerator.saveAsHtmlWithMap("hello-world.html", file);
			imageGenerator.loadHtml("中国");
			//拿图片流
			BufferedImage bufferedImage = imageGenerator.getBufferedImage();
			bufferedImage.flush(); 
			//写图片流
			ByteArrayOutputStream bs = new ByteArrayOutputStream();

			imOut = ImageIO.createImageOutputStream(bs); 
			ImageIO.write(bufferedImage, "png",imOut); 
			//拿到图片流
			b = bs.toByteArray();
			//return b;
		} catch (IOException e) {
			e.printStackTrace();
		}
    }
	//使用正则表达式，排除img标签src属性值已经是base64编码的情况  
   static Pattern pattern = Pattern.compile("^data:image/(png|gif|jpg|jpeg|bmp|tif|psd|ico);base64,.*");  
   static final String index = "base64,";
   static Matcher matcher = null;
	  /** 
     * 检测图片路径是否为真实有效的路径方法 
     * @param src 
     * @return 
     */  
    public static boolean checkImage(String src)throws Exception{  
        //使用正则表达式，排除img标签src属性值已经是base64编码的情况  
      //  Pattern pattern = Pattern.compile("^data:image/(png|gif|jpg|jpeg|bmp|tif|psd|ICO);base64,.*");  
        matcher = pattern.matcher(src);  
        if(/*matcher.matches()&&*/matcher.find())  
            return true;  
        //排除src路径并非图片格式的情况  
       // pattern=Pattern.compile("^.*[.](png|gif|jpg|jpeg|bmp|tif|psd|ICO)$");  
        //matcher = pattern.matcher(src);  
       // if(matcher.matches())  
        //    return false;  
        return false;  
    }  
    
	/** 
     * 替换html中的base64图片数据为实际图片 
     * @param html 
     * @param fileRoot 本地路径 
     * @param serRoot 服务器路径 
     * @return 
     */  
    public static void writeBase64Image(ShowHappyVo showhappy,String serRoot){  
        try {
		String html = showhappy.getContent();
     // Pattern pattern = Pattern.compile("\\<img[^>]*src=\"data:image/[^>]*>");  
      // Matcher matcher = pattern.matcher(html);    
			Map<String,String> srcs = getImgSrc(html);
			Pattern pattern = Pattern.compile("^data:image/(png|gif|jpg|jpeg|bmp|tif|psd|ico);base64,.*");  
			for(Map.Entry<String,String> entry:srcs.entrySet()){
				String src = entry.getValue().replaceAll("'", "");
				String fileName = entry.getKey().replaceAll("'", "");//待存储的文件名  
				Matcher m = pattern.matcher(src);  
		 		if(m.find()){
			   // if(checkImage(src)){      //找出base64图片元素    
			    	//if(matcher.find()){
						       //String str = m.group(); 
						       String str = src.substring(src.indexOf(index)+index.length());
						       System.out.println(html.indexOf(src)+"     "+src.indexOf(str)+"    "+html.length());
						       html = html.replace(src, fileName);
						       System.out.println(html.length());
						      // String src = src.replace("'", "");// StringUtils.replace(str, "src=\"", "\"");// ExStringUtils.substringBetween(str, "src=\"", "\"");//src="..."  
						        String ext = fileName.substring(fileName.indexOf('.'));//src.replace(str, "").replace( "data:image/", "").replace(";base64,", "");//图片后缀              
						       // String base64ImgData = StringUtils.replace(str, "base64,", "");//图片数据  
						        if(StringUtils.isNotEmpty(ext)){  
						            //data:image/gif;base64,base64编码的gif图片数据  
						            //data:image/png;base64,base64编码的png图片数据  
						      /*      if("jpeg".equalsIgnoreCase(ext)){//data:image/jpeg;base64,base64编码的jpeg图片数据  
						                ext = "jpg";  
						            } else if("x-icon".equalsIgnoreCase(ext)){//data:image/x-icon;base64,base64编码的icon图片数据  
						                ext = "ico";  
						            }*/  
						          //  String filePath = fileRoot+File.separator+fileName;//图片路径  
						            	File directory = new File(serRoot);  
						    			if(!directory.exists()||!directory.isDirectory()){//文件根目录不存在时创建  
						    				directory.mkdirs();  
						    			} 
						    			String path = showhappy.getId()+"_"+showhappy.getTitle();
						    			File ff = new File(serRoot+File.separatorChar+path);  
						    			if(!ff.exists()||!ff.isDirectory()){//文件根目录不存在时创建  
						    				ff.mkdirs();  
						    			}
						                convertBase64DataToImage(str, serRoot+File.separatorChar+path+File.separatorChar+fileName);//转成文件  
						              //  String serPath = serRoot+fileName;//服务器地址  
						            //    htmlContent = htmlContent.replace(src, serPath);//替换src为服务器地址  
						        }      
				       // }           
			    }   
			}
			showhappy.setContent(html);
			String shortContent = html2Text(html);
			if(StringUtils.isNotEmpty(shortContent)){
				if(shortContent.length()> 30){
					showhappy.setShortContent(shortContent.substring(0, 30)+"...");
				}else{
					showhappy.setShortContent(shortContent);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
    }  
    /** 
     * 把base64图片数据转为本地图片 
     * @param base64ImgData 
     * @param filePath 
     * @throws IOException 
     */  
    public static void convertBase64DataToImage(String base64ImgData,String filePath) throws IOException {  
        BASE64Decoder d = new BASE64Decoder();  
        byte[] bs = d.decodeBuffer(base64ImgData);  
        FileOutputStream os = new FileOutputStream(filePath);  
        os.write(bs);  
        os.close();  
    } 
    
    /**
     * 
     * @param type
     * @return
     */
    public static String GetImageHeader(String type){
	  String header = "data:image/"+type+";base64,"; 
	  return header;
    }
    /**
     * 将图片文件转化为字节数组字符串，并对其进行Base64编码处理
     * @param imgFilePath
     * @return
     */
    public static String GetImageStr(String imgFilePath,String type) {
    	  //为编码添加头文件字符串  
        String header = "data:image/"+type+";base64,"; 
        byte[] data = null;
        // 读取图片字节数组
        try {
            InputStream in = new FileInputStream(imgFilePath);
            data = new byte[in.available()];
            in.read(data);
            in.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        // 对字节数组Base64编码
        BASE64Encoder encoder = new BASE64Encoder();
        return header + encoder.encode(data);// 返回Base64编码过的字节数组字符串
    }
    /**
     * 对字节数组字符串进行Base64解码并生成图片
     * @param imgStr
     * @param imgFilePath
     * @return
     */
    public static boolean GenerateImage(String imgStr, String imgFilePath) {
        if (imgStr == null) // 图像数据为空
            return false;
        BASE64Decoder decoder = new BASE64Decoder();
        try {
            // Base64解码
            byte[] bytes = decoder.decodeBuffer(imgStr);
            for (int i = 0; i < bytes.length; ++i) {
                if (bytes[i] < 0) {// 调整异常数据
                    bytes[i] += 256;
                }
            }
            // 生成jpeg图片
            OutputStream out = new FileOutputStream(imgFilePath);
            out.write(bytes);
            out.flush();
            out.close();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    /**
     * 
     * @param inputString
     * @return
     */
    public static String html2Text(String inputString){
        String htmlStr = inputString; //含html标签的字符串
        String textStr ="";
        java.util.regex.Pattern p_script;
        java.util.regex.Matcher m_script;
        java.util.regex.Pattern p_style;
        java.util.regex.Matcher m_style;
        java.util.regex.Pattern p_html;
        java.util.regex.Matcher m_html;
       try{
             String regEx_script = "<[\\s]*?script[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?script[\\s]*?>"; //定义script的正则表达式{或<script[^>]*?>[\\s\\S]*?<\\/script> }
             String regEx_style = "<[\\s]*?style[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?style[\\s]*?>"; //定义style的正则表达式{或<style[^>]*?>[\\s\\S]*?<\\/style> }
             String regEx_html = "<[^>]+>"; //定义HTML标签的正则表达式

             p_script = Pattern.compile(regEx_script,Pattern.CASE_INSENSITIVE);
             m_script = p_script.matcher(htmlStr);
             htmlStr = m_script.replaceAll(""); //过滤script标签

             p_style = Pattern.compile(regEx_style,Pattern.CASE_INSENSITIVE);
             m_style = p_style.matcher(htmlStr);
             htmlStr = m_style.replaceAll(""); //过滤style标签

             p_html = Pattern.compile(regEx_html,Pattern.CASE_INSENSITIVE);
             m_html = p_html.matcher(htmlStr);
             htmlStr = m_html.replaceAll(""); //过滤html标签
             textStr = htmlStr;
        }catch(Exception e){
            e.printStackTrace();
        }
        return textStr;//返回文本字符串
    }  
    
	public static void main(String[] args) {
		String str = "<p>水电费水电费是的<img src='41136414_13.jpg' data-filename='41136414_13.jpg' style='width: 1036px;'>有志者事竟成二<img src='41136414_16.jpg' data-filename='41136414_16.jpg' style='width: 1036px;'>二百五大<br></p>";
		String result = html2Text(str);
		System.out.println(result);
		//String str = "base64,";
		////String ht = "data:image/jpeg;base64,";
		//Pattern pattern = Pattern.compile("^data:image/(png|gif|jpg|jpeg|bmp|tif|psd|ico);base64,.*");  
		//Matcher m = pattern.matcher(html);  
		//if(m.find()){
		//	String g = html.substring(html.indexOf(str)+str.length());
		//	System.out.println(g);
		//}
	/*	 List<String> list =  getsrcList(html);
		 for(String src:list){
			src = src.replace("'", "");
			Matcher matcher = pattern.matcher(src);  
			String str = matcher.group();
			System.out.println(str);
		 }*/
 		 //Pattern pattern = Pattern.compile("\\<img[^>]*src=\"data:image/[^>]*>");  
		 //Matcher matcher = pattern.matcher(html);    
		//String result = matcher.group();
		// replaceBase64Image(html,"J:\\aa");
		//System.out.println(result);
		//for(String datafilename:list){
			//System.out.println(datafilename);
			//src =  src.replace("data:image/jpeg;base64,", "").replaceAll("'", "");
			//GenerateImage(src, "J:\\bbb.jpg");
		//}
		//String str = GetImageStr("J:\\aaa.jpg");
		//System.out.println(str);
	}

}