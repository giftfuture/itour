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

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;
import com.itour.base.annotation.Auth;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.easyui.EasyUIGrid;
import com.itour.base.json.JsonUtils;
import com.itour.base.page.BasePage;
import com.itour.base.util.FilePros;
import com.itour.base.util.HtmlUtil;
import com.itour.base.util.StringUtil;
import com.itour.base.web.BaseController;
import com.itour.entity.TravelItem;
import com.itour.service.TravelItemService;
import com.itour.vo.OrderDetailVo;
//import com.alibaba.fastjson.JSONObject;
import com.itour.vo.TravelItemVo;
 
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
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	
	// Servrice start
	@Autowired //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private TravelItemService<TravelItem> travelItemService; 
	@Autowired
	private DataGridAdapter dataGridAdapter;
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@RequestMapping(value="/list") 
	public ModelAndView list(TravelItemVo page,HttpServletRequest request) throws Exception{
		return forward("server/sys/travelItem"); 
	}
	
	/**
	 * 更改封面
	 * @param cover
	 * @param page
	 * @param request
	 * @return
	 * @throws Exception
	 */
	//@ResponseBody
	@Auth(verifyLogin=true,verifyURL=true)
	@RequestMapping(value="/updateCover", method = RequestMethod.POST) 
	public ModelAndView updateCover(@RequestParam("cover") String cover ,TravelItemVo page,HttpServletRequest request) throws Exception{
		TravelItem ti = new TravelItem();
		ti.setCover(cover);
		travelItemService.update(ti);	
		return forward("server/sys/travelItem"); 
	}
	
	/**
	 * @param url
	 * @param classifyId
	 * @return 
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/dataList.json", method = RequestMethod.POST) 
	public EasyUIGrid datalist(TravelItemVo vo,HttpServletResponse response) throws Exception{
		//List<TravelItem> dataList = travelItemService.queryByList(page);
		BasePage<TravelItemVo> page = travelItemService.pagedQuery(vo);
		return dataGridAdapter.wrap(page);
	}
	
	
	
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/save", method = RequestMethod.POST)
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
	/**
	 * 
	 * @param id
	 * @param fileselect
	 * @param request
	 * @param response
	 * @return
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@RequestMapping(value="/uploadPhoto",method = RequestMethod.POST)//,method = RequestMethod.POST  , produces = "application/json"
	public @ResponseBody String uploadPhotos(@RequestParam(value="id",required=false)String id,
			@RequestParam(value="fileselect",required=false) MultipartFile fileselect,
			HttpServletRequest request,HttpServletResponse response) {
		Map<String,Object>  context = new HashMap();
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
			String physicalPath = FilePros.physicalPath();// FilePros.uploadPtopath(multipartRequest);//FilePros.uploadPath();
			TravelItem t = travelItemService.queryById(id);
			StringBuffer photos = new StringBuffer();
			if (t != null){
				photos.append(t.getPhotos() == null ? "":t.getPhotos());
			}
			// MultipartFile imgFile = null;
			 OutputStream out = null;
			// Iterator<String> it = multipartRequest.getFileNames();
			List<MultipartFile> multifiles = multipartRequest.getFiles("fileselect");
			 String picName = "";
			 String newpicName = "";
			 File directory = null;
			 File uploadpic = null;
			 String parpath = "";
			for(MultipartFile f:multifiles){
			    if (f.getOriginalFilename().length() > 0) {    
			    	picName = f.getOriginalFilename();   
		           // newfile =  new File(realPath);
		            parpath = physicalPath+t.getItemCode().replaceAll(" ", "")+"_"+t.getItem().replaceAll(" ", "");
		            directory = new File(parpath);
		            if(!directory.exists()||!directory.isDirectory()){
		            	directory.mkdirs();
		            }
		            newpicName = Calendar.getInstance(Locale.CHINA).getTimeInMillis()+picName.substring(picName.indexOf("."));
		            uploadpic = new File(parpath+"\\"+newpicName );
		            photos.append(StringUtils.isNotEmpty(photos.toString())?"|"+newpicName :newpicName );
		            System.out.println("upload filename is " + picName+"   newfilename="+newpicName );  
		            out = new FileOutputStream(uploadpic);  
		            out.write(f.getBytes());  
		            out.close();  
		        }  
			}
			picName = null;
			newpicName = null;
			directory = null;
			uploadpic = null;
			parpath = null;
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
			if(out != null){
				try {
					out.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			context.put(SUCCESS, true);
			context.put("msg", "图片上传成功！");
			}else{
				System.out.println("##########不是上传文件对象#############");
				context.put(SUCCESS, false);
				context.put("msg", "上传文件类型非法!");
			}
		} catch (IOException e) {
			context.put(SUCCESS, false);
			context.put("msg", "上传文件出现IO异常!");
			e.printStackTrace();
		}catch(Exception e){
			context.put(SUCCESS, false);
			context.put("msg", "上传文件出错!");
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
		//response.setHeader("content-type", "text/text;charset=UTF-8");
		String result = JsonUtils.encode(context);
		return result;
		//HtmlUtil.writerJson(response, result);
		//return forward("server/sys/travelItem",context); 
	}
	/**
	 * 获取待编辑,预览,删除的图片
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/editPhoto",method = RequestMethod.POST)
	public Map<String,Object> getPhotos(@RequestParam(value="id")String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = getRootMap();
		try {
			TravelItem ti = travelItemService.queryById(id);
			String photos =  ti.getPhotos();
			String [] filenames = photos.split("\\|");
			String diskPath = FilePros.physicalPath();//磁盘路径
			String netPath = FilePros.uploadPtopath();//网络访问路径
			String directory = ti.getItemCode().replaceAll(" ", "")+"_"+ti.getItem().replaceAll(" ", "");
			String parpath = diskPath+"\\"+directory;
			List<String> uris = new ArrayList<String>();
			File newfile = null;
			FileInputStream is = null;
			BufferedInputStream imageStream = null;
			OutputStream toClient = null;
			for(String name:filenames){
				if(StringUtils.isNotEmpty(name)&& !name.equals(",")){	
					newfile = new File(parpath+"\\"+name);
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
						uris.add(netPath+directory+"/"+newfile.getName());//newfile.getAbsolutePath()
					}
				}
			}
		/*	if(is != null){			        	
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
			}*/
			newfile = null;
			imageStream = null;
			toClient = null;
			context.put(SUCCESS, true);
			context.put("uris", uris);
			//HtmlUtil.writerJSON(response, context);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return context;
	}
	
	/**
	 * 保存编辑,删除后的图片
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/saveeditedPhoto",method = RequestMethod.POST)
	public Map<String,Object> saveeditedPhoto(@RequestParam(value="id")String id,@RequestParam(value="fileNames")String fileNames,HttpServletResponse response)throws Exception{
		Map<String,Object> context = new HashMap<String,Object>();
		String realPath = FilePros.uploadPath();
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
		context.put(SUCCESS, true);
		context.put("msg", "图片保存成功！");
		return context;
	}
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/getId", method = RequestMethod.POST)
	public Map<String,Object> getId(String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap();
		TravelItem entity  = travelItemService.queryById(id);
		if(entity  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return new HashMap<String,Object>();
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		return context;
	}
	/**
	 * IllegalAccessException
	 * @param travelStyle
	 * @param fileNames
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value="/search", method = RequestMethod.POST)
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
	@Auth(verifyLogin=false,verifyURL=false)
	@ResponseBody
	@RequestMapping(value="/queryByScope", method = RequestMethod.GET)
	public List<TravelItem> queryByScope(@RequestParam(value="scopeAlias")String scopeAlias,HttpServletResponse response)throws Exception{
		List<TravelItem> travelItems = travelItemService.queryByScopeAlias(scopeAlias);
		return travelItems ;
	}
	/**
	 * 查询该区域的景点
	 * @param travelStyle
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@Auth(verifyLogin=false,verifyURL=false)
	@ResponseBody
	@RequestMapping(value="/queryByStyle", method = RequestMethod.GET)
	public List<TravelItem> queryByStyle(@RequestParam(value="travelStyle")String travelStyle,HttpServletResponse response)throws Exception{
		List<TravelItem> travelItems = travelItemService.queryByStyle(travelStyle);
		return travelItems ;
	}
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		travelItemService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}
	/**
	 * 
	 * @param response
	 * @return全部區域
	 * @throws Exception
	 */
	@Auth(verifyLogin=false,verifyURL=false)
	@ResponseBody
	@RequestMapping(value="/allScopes", method = RequestMethod.GET)
	public List<Map<String,String>> allScopes(HttpServletResponse response) throws Exception{
		List<Map<String,String>> list = travelItemService.allScopes();
		List<Map<String,String>> newlist = Lists.newArrayList();
		newlist.add(new HashMap(){{put("key","");put("value","全部區域");}});
		newlist.addAll(list);
		return newlist;
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
	return "";
	return request.getSession().getServletContext().getRealPath(path);
	}
	
	
}
