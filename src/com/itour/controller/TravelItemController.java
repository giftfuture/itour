package com.itour.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.util.HtmlUtil;
import com.itour.base.util.RedProFile;
import com.itour.base.util.StringUtil;
import com.itour.base.web.BaseController;
import com.itour.entity.TravelItem;
import com.itour.page.TravelItemPage;
import com.itour.service.TravelItemService;
//import com.alibaba.fastjson.JSONObject;
 
/**
 * 
 * <br>
 * <b>功能：</b>TravelItemController<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */ 
@Controller
@RequestMapping("/travelItem") 
public class TravelItemController extends BaseController{
	
	private final static Logger log= Logger.getLogger(TravelItemController.class);
	
	// Servrice start
	@Autowired(required=false) //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private TravelItemService<TravelItem> travelItemService; 
	
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/list") 
	public ModelAndView list(TravelItemPage page,HttpServletRequest request) throws Exception{
		/*Map<String,Object>  context = getRootMap();
		List<TravelItem> dataList = travelItemService.queryByList(page);
		context.put("dataList", dataList);//设置页面数据
		 */	
		return forword("server/sys/travelItem"); 
	}
	
	/**
	 * 更改封面
	 * @param cover
	 * @param page
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updateCover") 
	public ModelAndView updateCover(@RequestParam("cover") String cover ,TravelItemPage page,HttpServletRequest request) throws Exception{
		TravelItem ti = new TravelItem();
		ti.setCover(cover);
		travelItemService.update(ti);	
		return forword("server/sys/travelItem"); 
	}
	
	/**
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/dataList") 
	public void datalist(TravelItemPage page,HttpServletResponse response) throws Exception{
		List<TravelItem> dataList = travelItemService.queryByList(page);
		Map<String,Object> jsonMap = new HashMap<String,Object>();//设置页面数据
		jsonMap.put("total",page.getPager().getRowCount());
		jsonMap.put("rows", dataList);
		HtmlUtil.writerJSON(response, jsonMap);
	}
	
	
	
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/save")
	public void save(TravelItem entity,Integer[] typeIds,HttpServletResponse response) throws Exception{
	//	File[]  ff = fileselect;
		//System.out.println(ff != null ? ff.length:0);
		//Map<String,Object>  context = new HashMap<String,Object>();
		if(entity.getId()==null||StringUtils.isBlank(entity.getId().toString())){
			travelItemService.add(entity);
		}else{
			TravelItem ti = travelItemService.queryById(entity.getId());
			if(ti == null)
				travelItemService.add(entity);
			else
				travelItemService.update(entity);
		}
		sendSuccessMessage(response, "保存成功~");
	}
	//headers = "content-type=application/x-www-form-urlencoded",
	
	@RequestMapping(value="/uploadPhoto",method = RequestMethod.POST)//,method = RequestMethod.POST
	@ResponseBody // @ResponseBody Map<String,Object>
	public ModelAndView uploadPhoto(@RequestParam(value="id",required=false)String id,
			@RequestParam(value="fileselect",required=false) MultipartFile fileselect,
			//@RequestParam(value="name",required=false) String name,
			HttpServletRequest request,HttpServletResponse response) {
		//Map<String,Object> resMap = new HashMap<String,Object>();
		//MultipartFile fileselect = null;
		try {
			if(request instanceof MultipartHttpServletRequest){
			//MultipartResolver resolver = new CommonsMultipartResolver(request.getSession().getServletContext()); 
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest)request;// resolver.resolveMultipart(request);
			//MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;            
		 //String filename =	multipartRequest.getHeader("X_FILENAME");
		// String filetype =	multipartRequest.getHeader("X-File-Type");
		// String fifi = multipartRequest.getHeader("fileselect");
		// CommonsMultipartFile cm = (CommonsMultipartFile) multipartRequest.getFile("file");
			// 获得文件：   
			//Map<String,MultipartFile> file = (Map<String,MultipartFile>) multipartRequest.getFileMap(); 
			//MultiValueMap<String,MultipartFile> its = multipartRequest.getMultiFileMap();
			//List<MultipartFile> lll = multipartRequest.getFiles("fileselect");
			String realPath = RedProFile.uploadPath();
			TravelItem t = travelItemService.queryById(id);
			StringBuffer photos = new StringBuffer();
			if (t != null){
				photos.append(t.getPhotos() == null ? "":t.getPhotos());
			}
			// MultipartFile imgFile = null;
			 OutputStream out = null;
			// Iterator<String> it = multipartRequest.getFileNames();
			List<MultipartFile> multifiles = multipartRequest.getFiles("fileselect");
			 String fileName = "";
			 String newfileName = "";
			 File newfile = null;
			 String parpath = "";
			for(MultipartFile f:multifiles){
			    if (f.getOriginalFilename().length() > 0) {    
		            fileName = f.getOriginalFilename();   
		           // newfile =  new File(realPath);
		            parpath = realPath+"\\"+t.getItemCode().replaceAll(" ", "")+"_"+t.getItem().replaceAll(" ", "");
		            newfile = new File(parpath);
		            if(!newfile.exists()||!newfile.isDirectory()){
		            	newfile.mkdirs();
		            }
		            newfileName = Calendar.getInstance(Locale.CHINA).getTimeInMillis()+fileName.substring(fileName.indexOf("."));
		            newfile = new File(parpath+"\\" +newfileName);
		            photos.append("|"+newfileName);
		            System.out.println("upload filename is " + fileName+"   newfilename="+newfileName);  
		            out = new FileOutputStream(newfile);  
		            out.write(f.getBytes());  
		            out.close();  
		        }  
			}
			newfile = null;
			fileName = null;
			newfileName = null;
			TravelItem ti = new TravelItem();
			ti.setId(id);
			ti.setPhotos(photos.toString());
			travelItemService.update(ti);
		/*	 String key = it.next();
			  while(it.hasNext()) {    
			         key = (String) it.next();    
			        imgFile = multipartRequest.getFile(key);    
			        if (imgFile.getOriginalFilename().length() > 0) {    
			            String fileName = imgFile.getOriginalFilename();   
			            System.err.println("filename is " + fileName);  
			            out = new FileOutputStream(new File(realPath+"\\" + fileName));  
			            out.write(imgFile.getBytes());  
			            out.close();  
			        }  
			    }  
			  imgFile = null;*/
				//HttpHeaders map = multipartRequest.getRequestHeaders();
			 //Object obj = multipartRequest.getAttribute("fileselect");
			// HttpHeaders header= multipartRequest.getRequestHeaders();// multipartRequest.getHeader("fileselect");
			// List<MultipartFile> files = multipartRequest.getFiles("fileselect");
			//获得提交的所有的<img name=""/> 标签中的name,可实现多张上传
			// Iterator<String> names= multipartRequest.getFileNames();

			 //循环所有的<img name=""/> 标签中的name
			//if (fileselect != null) {
					//FileIO.uploadPhoto(id,fileselect.getInputStream());
				//获取保存的路径，
				//request.getSession().getServletContext().getRealPath("/upload/apk");
				//String originFileName = fileselect.getOriginalFilename();
				//File f = new File(realPath,originFileName);
				//if (fileselect.isEmpty()) {
					// 未选择文件
					//resMap.put("status", StatusConstants.STATUS_PARM_IS_EMPTY);
			//	} else{
					// 文件原名称
					/*try {
						//这里使用Apache的FileUtils方法来进行保存
						FileUtils.copyInputStreamToFile(fileselect.getInputStream(),
								new File(realPath, originFileName));
						resMap.put("status",StatusConstants.STATUS_OK);
					} catch (IOException e) {
						System.out.println("文件上传失败");
						resMap.put("status", StatusConstants.STATUS_EXECPTION);
						e.printStackTrace();
					}*/
				//}

			//}
			}else{
				System.out.println("##########不是上传文件对象#############");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}
	/*	try{	
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setContentType("text/html;charset=UTF-8");   
	    PrintWriter out1 = response.getWriter();  
	    //FileUploadResp res = new FileUploadResp();  
	    //res.setResult(0);  
	    //res.setDesc("success.");  
	    out1.write(JSONObject.fromObject(new Object()).toString());  
	    } catch (IOException e) {  
	        log.error("in batchImportApps,inputstream is null.");  
	    } */
		//return resMap;
		return forword("server/sys/travelItem"); 
	}
	/**
	 * 获取待编辑,预览,删除的图片
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/editPhoto",method = RequestMethod.POST)
	public void editPhoto(@RequestParam(value="id")String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = getRootMap();
		try {
			TravelItem ti = travelItemService.queryById(id);
			String photos =  ti.getPhotos();
			String [] filenames = photos.split("\\|");
			String realPath = RedProFile.uploadPath();
			String parpath = realPath+"\\"+ti.getItemCode().replaceAll(" ", "")+"_"+ti.getItem().replaceAll(" ", "");
			List<String> uris = new ArrayList<String>();
			File newfile = null;
			FileInputStream is = null;
			BufferedInputStream imageStream = null;
			OutputStream toClient = null;
			for(String name:filenames){
				if(StringUtils.isNotEmpty(name)&& !name.equals(","))
				{	
					newfile = new File(parpath+"\\" +name);
					if(newfile.exists() && newfile.getName().equals(name)){
						/*is = new FileInputStream(newfile);
					    imageStream = new BufferedInputStream(is);
				        int i = imageStream.available(); // 得到文件大小
				        byte data[] = new byte[i];
				        is.read(data);// 读数据
	*/			      //  response.setContentType("image/*"); // 设置返回的文件类型
				      //  response.setContentType("application/octet-stream;charset=UTF-8");  
				       // toClient = response.getOutputStream(); // 得到向客户端输出二进制数据的对象
				      //  toClient.write(data); // 输出数据
				      //  toClient.flush();
						uris.add(newfile.getAbsolutePath());
					}
				}
			}
			if(is != null){			        	
				try {
					is.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(toClient != null){				
				try {
					toClient.close();
				} catch (Exception e) {
					
					e.printStackTrace();
				}
			}
			newfile = null;
			imageStream = null;
			toClient = null;
			context.put(SUCCESS, true);
			context.put("uris", uris);
			HtmlUtil.writerJSON(response, context);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 保存编辑,删除后的图片
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/saveeditedPhoto",method = RequestMethod.POST)
	public void saveeditedPhoto(@RequestParam(value="id")String id,@RequestParam(value="fileNames")String fileNames,HttpServletResponse response)throws Exception{
		String realPath = RedProFile.uploadPath();
		TravelItem ti = travelItemService.queryById(id);
		String [] photos = StringUtils.isNotEmpty(ti.getPhotos()) ? ti.getPhotos().split("\\|"):null;
		String [] names = fileNames.split(",");
		List<String> list =	Arrays.asList(photos);
		for(String name:names){
			String parpath = ti != null?ti.getItemCode().replaceAll(" ", "")+"_"+ti.getItem() :"";
			if(StringUtils.isNotEmpty(name) &&StringUtils.isNotEmpty(parpath)){
				String filePath = realPath+"\\"+parpath+"\\"+name;
				File file = new File(filePath);
				if (file.exists() && file.getName().equals(name)) {
					file.delete();
					for(String photo:photos){
						if(photo.equals(name)){
							list.remove(photo);
						}
					}
				}
			}
		}
		list.spliterator();
		ti = new TravelItem();
		ti.setId(id);
		StringBuffer pnames = new StringBuffer();
		for(String name:list){
			pnames.append("|"+name);
		}
		ti.setPhotos(pnames.toString());
		travelItemService.update(ti);
	}
	
	@RequestMapping("/getId")
	public void getId(String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap();
		TravelItem entity  = travelItemService.queryById(id);
		if(entity  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return;
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		HtmlUtil.writerJSON(response, context);
	}
	/**
	 * IllegalAccessException
	 * @param travelStyle
	 * @param fileNames
	 * @param response
	 * @throws Exception
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/search")
	public void searchTravelItem(@RequestParam(value="travelStyle")String travelStyle,@RequestParam(value="rcdDays")String rcdDays,@RequestParam(value="scope")String scope,HttpServletResponse response) throws Exception{
		HashMap map = new HashMap();
		if(StringUtils.isNotEmpty(travelStyle)){			
			map.put("travelStyle", travelStyle);
		}
		if(StringUtils.isNotEmpty(scope)){			
			map.put("scope", scope);
		}
		if(rcdDays.indexOf('-')>0){
			map.put("rcdDays1", rcdDays.split("-")[0]);
			map.put("rcdDays2", rcdDays.split("-")[1]);
		}else{
			map.put("rcdDays", rcdDays);
		}
		travelItemService.searchTravelItem(map);
	}
	
	/**
	 * 通过旅行方式查询
	 * @param travelStyle
	 * @param response
	 * @throws Exception
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/queryByStyle")
	public void queryByStyle(@RequestParam(value="travelStyle")String travelStyle,HttpServletResponse response)throws Exception{
		List<TravelItem> travelItems = travelItemService.queryByStyle(travelStyle);
		
	}
	
	@RequestMapping("/delete")
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		travelItemService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}
	
	/**
	 * 
	 * @param exception
	 * @return
	 */
	 @ExceptionHandler(IOException.class)  
	 public ModelAndView handleIOException(IOException exception) {  
		 ModelAndView modelAndView = new ModelAndView("profile/uploadPage");  
		 modelAndView.addObject("error", exception.getMessage());  
		 return modelAndView;  
	 }  

	
	/**
	* 返回项目在磁盘上的绝对路径
	* 
	* @param request
	* @param path
	* @return
	*/
	private static String getAppPath(HttpServletRequest request, String path) {
	if (StringUtil.isEmpty(path))
	return null;
	return request.getSession().getServletContext().getRealPath(path);

	}
}
